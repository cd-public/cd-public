/*
 * Example kernel loadable module.  It illustrates the 
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

#include "getpid.h" /* used by both kernel module and user program 
                     * to define shared parameters including the
                     * debugfs directory and file used for emulating
                     * a system call
                     */

int print_bool = 1;
					 
/* The following two variables are global state shared between
 * the "call" and "return" functions.  They need to be protected
 * from re-entry caused by kernel preemption.
 */
/* The call_task variable is used to ensure that the result is
 * returned only to the process that made the call.  Only one
 * result can be pending for return at a time (any call entry 
 * while the variable is non-NULL is rejected).
 */

struct task_struct *call_task = NULL;
char *respbuf;  // points to memory allocated to return the result

int file_value;
struct dentry *dir, *file;  // used to set up debugfs file name

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
 
/* return length of string generated for task 'task' with string in *resp_line_offset */ 
int build_1task_resp(struct task_struct *task, char *resp_line_offset)
{
  pid_t cur_pid = 0;
  pid_t parent_pid;
  char *comm;
  long state;
  unsigned int flags;
  int priority;
  struct mm_struct *mm;
  int area;
  unsigned long exec;
  unsigned long stack;
  unsigned long total;
  
  if (print_bool) {
	printk("Begin task_struct access...\n\ntask_pid_nr(task) attempt:\n");
  }
  cur_pid = task_pid_nr(task);
  if (print_bool) {
	printk("task_pid_nr returns %d\n\nget_task_comm(comm, task) attempt:\n", cur_pid);
  }  
  comm = (char *)kmalloc(TASK_COMM_LEN, GFP_ATOMIC);
  if (NULL == comm) {
	 preempt_enable(); 
     return -ENOSPC;
  }
  if (print_bool) {
	printk("kmalloc for comm succeeds, comm taskly is %s\n", comm);
  }
  comm = get_task_comm(comm, task);
  if (print_bool) {
	printk("get_task_comm(comm,task) returns %s\n\ntask_pid_nr(task->real_parent) attempt\n", comm);
  }
  parent_pid = task_pid_nr(task->real_parent);
  if (print_bool) {
	printk("task_pid_nr(task->real_parent returns %d\n\nattempting to retrieve task->state\n", parent_pid);
  }
  state = task->state;
  if (print_bool) {
	printk("task->state retrieved as %ld\n\nattempting to retrieve task->flags\n", state);
  }
  flags = task->flags;
  if (print_bool) {
	printk("task->flags retrieved as %x\n\nattempting to retrieve task->normal_prio\n", flags);
  }
  priority = task->normal_prio;
  if (print_bool) {
	printk("task->normal_prio retrieved as %d\n\ntransition to VM values - attempting to access task->mm\n", priority);
  } 
  mm = task->mm;
  if (NULL == mm) {
		 preempt_enable(); 
     return -ENOSPC;
  }
  if (print_bool) {
	printk("task->mm is non-null\n\nattempting to retrieve mm->map_count");
  }
  area = mm->map_count;
  if (print_bool) {
	printk("mm->map_count retrieved as %d\n\nattempting to retrieve mm->exec_vm\n", area);
  }
  exec = mm->exec_vm;
  if (print_bool) {
	printk("mm->exec_vm retrieved as %lu\n\nattempting to retrieve mm->stack_vm\n", exec);
  }
  stack = mm->stack_vm;
  if (print_bool) {
	printk("mm->stack_vm retrieved as %lu\n\nattempting to retrieve mm->total_vm\n", stack);
  }
  total = mm->total_vm;
  if (print_bool) {
	printk("mm->total_vm retrieved as %lu\n\naccesses complete for this task.  Attempting string assembly...\n\n", total);
  }
  sprintf(resp_line_offset, "     task PID %d\n       command %s\n       parent PID %d\n       state %ld\n       flags %X\n       priority %d\n       VM areas %d\n       VM exec %lu\n       VM stack %lu\n       VM total %lu\n", cur_pid, comm, parent_pid, state, flags, priority, area, exec, stack, total);
  return strlen(resp_line_offset);
}
  
static ssize_t getpinfo_call(struct file *file, const char __user *buf,
                                size_t count, loff_t *ppos)
{
  int rc;
  char callbuf[MAX_CALL];  // local (kernel) space to store call string
  char resp_line[MAX_LINE]; // local (kernel) space for a response
  char *offset = resp_line;
  struct task_struct *taski;
  int more_sibs = 1;
  struct list_head *list;

  /* the user's write() call should not include a count that exceeds
   * the size of the module's buffer for the call string.
   */

  if(count >= MAX_CALL)
    return -EINVAL;  // return the invalid error code

  /* The preempt_disable() and preempt_enable() functions are used in the
   * kernel for preventing preemption.  They are used here to protect
   * state held in the call_task and respbuf variables
   */
  
  preempt_disable();  // prevents re-entry possible if one process 
                      // preempts another and it also calls this module

  if (call_task != NULL) { // a different process is expecting a return
     preempt_enable();  // must be enabled before return
     return -EAGAIN;
  }

  // allocate some kernel memory for the response
  respbuf = kmalloc(MAX_RESP, GFP_ATOMIC);
  if (respbuf == NULL) {  // always test if allocation failed
     preempt_enable(); 
     return -ENOSPC;
  }

  strcpy(respbuf,""); /* initialize buffer with null string */

  /* current is global for the kernel and contains a pointer to the
   * task_struct for the running process 
   */
  call_task = current;

  /* Use the kernel function to copy from user space to kernel space.
   */

  rc = copy_from_user(callbuf, buf, count);
  callbuf[MAX_CALL - 1] = '\0'; /* make sure it is a terminated string */

  if (strcmp(callbuf, "getpinfo") != 0) { // only valid call is "getpinfo"
      strcpy(respbuf, "Failed: invalid operation\n");
      printk(KERN_DEBUG "getpinfo: call %s will return %s\n", callbuf, respbuf);
      preempt_enable();
      return count;  /* write() calls return the number of bytes written */
  }

  sprintf(respbuf, "Success:\n"); // start forming a response in the buffer
  
  list = current->real_parent->children.next;
  taski = list_entry(list, struct task_struct, sibling);
  offset += build_1task_resp(taski,offset);
  if (list->next == list->prev) {
    more_sibs = 0;
  } else {
    taski = list_entry(list->next, struct task_struct, sibling);
    offset += build_1task_resp(taski,offset);
  }    

  if (more_sibs) {
    sprintf(offset, "Only two siblings fit completely in buffer of this size.\nGCC recommends buffers of no larger size for this architecture.");
  }
	   
  strcat(respbuf, resp_line); // finish the response

  /* Here the response has been generated and is ready for the user
   * program to access it by a read() call.
   */

  printk(KERN_DEBUG "getpid: call %s will return %s", callbuf, respbuf);
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
