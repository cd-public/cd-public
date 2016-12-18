/*
 * Calvin Deutschbein
 
 * Adapted example kernel loadable module.  It illustrates the 
 * module infrastructure used in programming assignments
 * in COMP 790.  The only function is to accept
 * an emulated "system call" to getpid from user space
 * and returns the character representation of the 
 * Linux process ID (pid) of the caller.
 */ 
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/fs.h>
#include <linux/debugfs.h>
#include <linux/uaccess.h>
#include <linux/sched.h>
#include <linux/slab.h>
#include <linux/wait.h>
#include <linux/string.h>

#include "getpid.h" /* used by both kernel module and user program 
                     * to define shared parameters including the
                     * debugfs directory and file used for emulating
                     * a system call
                     */

/* my globals, for debug and global state */
					 
int print_bool = 0;

#define NUM_QUEUES 5 

wait_queue_head_t *waitqs[NUM_QUEUES];
long qids[NUM_QUEUES];
int activeqs = 0;

					 
/* The following two variables are global state shared between
 * the "call" and "return" functions.  They need to be protected
 * from re-entry caused by kernel preemption.
 */
/* The call_task variable is used to ensure that the result is
 * returned only to the process that made the call.  Only one
 * result can be pending for return at a time (any call entry 
 * while the variable is non-NULL is rejected).
 */

char *respbuf;  // points to memory allocated to return the result

int file_value;
struct dentry *dir, *file;  // used to set up debugfs file name
struct task_struct *call_task = NULL;

/* This function emulates the handling of a system call by
 * accessing the call string from the user program, executing
 * the requested function and preparing a response.
 *
 * This function is executed when a user program does a write()
 * to the debugfs file used for emulating a system call.  The
 * buf parameter points to a user space buffer, and count is a
 * maximum size of the buffer content.
 *
 * The user space program is blocked at the write() call until
 * this function returns.
 */
 
 
static ssize_t getpinfo_call(struct file *file, const char __user *buf,
                                size_t count, loff_t *ppos)
{
  int rc;
  char callbuf[MAX_CALL];  // local (kernel) space to store call string
  char parse;
  char call[50];
  char **param1;
  char **param2;
  int i;
  long int *paraml1 = 0;
  long int *paraml2 = 0;
  DEFINE_WAIT(wait);

  strcpy(call, callbuf);

  /* the user's write() call should not include a count that exceeds
   * the size of the module's buffer for the call string.
   */

  if(count >= MAX_CALL) {
    strcpy(respbuf, "MAX_CALL overflow\n");
    return -EINVAL;  // return the invalid error code
  }

  /* The preempt_disable() and preempt_enable() functions are used in the
   * kernel for preventing preemption.  They are used here to protect
   * state held in the call_task and respbuf variables
   */
  
  preempt_disable();  // prevents re-entry possible if one process 
                      // preempts another and it also calls this module

  // allocate some kernel memory for the response
  respbuf = kmalloc(MAX_RESP, GFP_ATOMIC);
  param1 = kmalloc(sizeof(void *), GFP_ATOMIC);
  param2 = kmalloc(sizeof(void *), GFP_ATOMIC);
  if ((respbuf == NULL) || (param1 == NULL) || (param2 == NULL)) {  // always test if allocation failed
     strcpy(respbuf, "malloc failed\n");
     preempt_enable(); 
     return -ENOSPC;
  }

  *param1 = *param2 = call;

  strcpy(respbuf,"in kernel\n"); /* initialize buffer with null string */

  /* Use the kernel function to copy from user space to kernel space.
   */

  rc = copy_from_user(callbuf, buf, count);
  callbuf[MAX_CALL - 1] = '\0'; /* make sure it is a terminated string */

  if (strncmp(call, "event_", 6) != 0) {  /* all valid calls begin with "event_" */
      strcpy(respbuf, "Failed: invalid operation\n");
      printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
      preempt_enable();
      return count;  /* write() calls return the number of bytes written */
  }

  /* IMPLEMENTATION HERE */
  parse = call[6];  /* extract the diffferentiating character from the call, could be c/w/s/d */
  /* There appears to be literally zero documentation of the kernel string functions */
  /* They predominantly seem to be loosely similar to string.h but implemented as 
     architechture specific machine level instructions or otherwise not explicitly
     defined in the kernel source code. */
  /* I assumed they exactly match the string.h definitions unless I found something on 
     stack overflow or in the source code that suggests otherwise.  */
  /* I am aware of no better alternative and this at least creates compilable code. */
  strsep(param1, " ");
  strict_strtol(*param1, 10, paraml1);
  if (parse == 'c') {
	  /* create */
	  if (activeqs == 0) {
		  /* initialize */
	          for (i = 0; i < 5; i++) {
			  qids[i] = 0;
			  init_waitqueue_head(waitqs[i]);
		  }
	  }
	  if (activeqs >= NUM_QUEUES) {
		  strcpy(respbuf, "-1");
		  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
		  preempt_enable();
		  *ppos = 0;
		  return count;  /* write() calls return the number of bytes written */
	  }
	  qids[activeqs] = *paraml1;
	  activeqs++;
	  strcpy(respbuf, *param1);
	  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
	  preempt_enable();
	  *ppos = 0;
	  return count;  /* write() calls return the number of bytes written */
  } else if (parse == 'w') {
	  /* wait */
          param2 = param1;
	  strsep(param2, " ");
	  /* ensure initialization */
	  if (activeqs == 0) {
		  strcpy(respbuf, "-1");
		  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
		  preempt_enable();
		  *ppos = 0;
		  return -1;
	  }
	  /* find the match */
	  i = 0;
	  strict_strtol(*param2, 10, paraml2);
	  while ((*paraml1 != qids[i]) && (i < 6)) {
		  i++;
	  }
	  if (i == 6) {
		  strcpy(respbuf, "-1");
		  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
		  preempt_enable();
		  *ppos = 0;
		  return -1;
	  }
	  /* i is now the index of the requested wait queue */
	  /* "Note that if successful, this call does not return in the user process.
		 (it becomes blocked while executing inside your module)
		 unless and until the event is signaled or destroyed.
		 This means that the write() call in the user process will not complete until it is unblocked." */
	  add_wait_queue(waitqs[1], &wait);
	  if (paraml2) { /* exclusive */
		  add_wait_queue_exclusive(waitqs[i], &wait);
		  prepare_to_wait_exclusive(waitqs[i], &wait, TASK_NORMAL);
		  preempt_enable();
		  schedule();
		  preempt_disable();
		  finish_wait(waitqs[i], &wait);
		  strcpy(respbuf, *param1);
		  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
		  preempt_enable();
		  *ppos = 0;
		  return count;
	  } else {
		  add_wait_queue(waitqs[i], &wait);
		  prepare_to_wait(waitqs[i], &wait, TASK_NORMAL);
		  preempt_enable();
		  schedule();
		  preempt_disable();
		  finish_wait(waitqs[i], &wait);
		  strcpy(respbuf, *param1);
		  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
		  preempt_enable();
		  *ppos = 0;
		  return count;
	  }
  } else if (parse == 's') {
	  /* signal */
	  /* ensure initialization */
	  if (activeqs == 0) {
		  strcpy(respbuf, "-1");
		  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
		  preempt_enable();
		  *ppos = 0;
		  return count;
	  }
	  i = 0;
	  while ((*paraml1 != qids[i]) && (i < 6)) {
		  i++;
	  }
	  if (i == 6) {
		  strcpy(respbuf, "-1");
		  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
		  preempt_enable();
		  *ppos = 0;
		  return count;
	  }
	  /* i is now the index of the requested wait queue */
	  wake_up(waitqs[i]);
	  strcpy(respbuf, *param1);
	  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
	  preempt_enable();
	  *ppos = 0;
	  return count;
  } else if (parse == 'd') {
	  /* destroy */
          /* I just mark the queue as ineligible by setting id to -1. */
          i = 0;
          while ((*paraml1 != qids[i]) && (i < 6)) {
	    i++;
	  }
	  if (6 == i) {
	    strcpy(respbuf, "-1");
	  } else {
	    qids[i] = -1;
	    strcpy(respbuf, *param1);
	  }
	  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
	  preempt_enable();
	  *ppos = 0;
	  return count;  /* write() calls return the number of bytes written */
  } else {
	  strcpy(respbuf, "Failed: invalid operation\n");
	  printk(KERN_DEBUG "event_*: call %s will return %s\n", callbuf, respbuf);
	  preempt_enable();
	  *ppos = 0;
      return count;  /* write() calls return the number of bytes written */
  }
  /* IMPLEMENTATION DONE */
  preempt_enable();
  
  *ppos = 0;  /* reset the offset to zero */
  return count;  /* write() calls return the number of bytes */
}

/* This function emulates the return from a system call by returning
 * the response to the user as a character string.  It is executed 
 * when the user program does a read() to the debugfs file used for 
 * emulating a system call.  The buf parameter points to a user space 
 * buffer, and count is a maximum size of the buffer space. 
 * 
 * The user space program is blocked at the read() call until this 
 * function returns.
 */

static ssize_t getpinfo_return(struct file *file, char __user *userbuf,
                                size_t count, loff_t *ppos)
{
  int rc; 

  preempt_disable(); // protect static variables

  if (current != call_task) { // return response only to the process making
                              // the getpid request
     preempt_enable();
     return 0;  // a return of zero on a read indicates no data returned
  }

  rc = strlen(respbuf) + 1; /* length includes string termination */

  /* return at most the user specified length with a string 
   * termination as the last byte.  Use the kernel function to copy
   * from kernel space to user space.
   */

  /* Use the kernel function to copy from kernel space to user space.
   */
  if (count < rc) { // user's buffer is smaller than response string
    respbuf[count - 1] = '\0'; // truncate response string
    rc = copy_to_user(userbuf, respbuf, count); // count is returned in rc
  }
  else 
    rc = copy_to_user(userbuf, respbuf, rc); // rc is unchanged

  kfree(respbuf); // free allocated kernel space
  
  respbuf = NULL;
  call_task = NULL; // response returned so another request can be done

  preempt_enable(); // clear the disable flag

  *ppos = 0;  /* reset the offset to zero */
  return rc;  /* read() calls return the number of bytes */
} 

// Defines the functions in this module that are executed
// for user read() and write() calls to the debugfs file
static const struct file_operations my_fops = {
        .read = getpinfo_return,
        .write = getpinfo_call,
};

/* This function is called when the module is loaded into the kernel
 * with insmod.  It creates the directory and file in the debugfs
 * file system that will be used for communication between programs
 * in user space and the kernel module.
 */

static int __init getpinfo_module_init(void)
{

  /* create an in-memory directory to hold the file */

  dir = debugfs_create_dir(dir_name, NULL);
  if (dir == NULL) {
    printk(KERN_DEBUG "getpid: error creating %s directory\n", dir_name);
     return -ENODEV;
  }

  /* create the in-memory file used for communication;
   * make the permission read+write by "world"
   */

  file = debugfs_create_file(file_name, 0666, dir, &file_value, &my_fops);
  if (file == NULL) {
    printk(KERN_DEBUG "getpid: error creating %s file\n", file_name);
     return -ENODEV;
  }

  printk(KERN_DEBUG "getpid: created new debugfs directory and file\n");

  return 0;
}

/* This function is called when the module is removed from the kernel
 * with rmmod.  It cleans up by deleting the directory and file and
 * freeing any memory still allocated.
 */

static void __exit getpinfo_module_exit(void)
{
  debugfs_remove(file);
  debugfs_remove(dir);
  if (respbuf != NULL)
     kfree(respbuf);
}

/* Declarations required in building a module */

module_init(getpinfo_module_init);
module_exit(getpinfo_module_exit);
MODULE_LICENSE("GPL");
