/*
 * Calvin Deutschbein
 *
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
#include <linux/mutex.h>
#include <linux/rtmutex.h>
#include <linux/delay.h>
#include "GPU_Locks_kernel.h" /* used by both kernel module and user program 
                     * to define shared parameters including the
                     * debugfs directory and file used for emulating
                     * a system call
                     */

/* The following two variables are global state shared between
 * the "call" and "return" functions.  They need to be protected
 * from re-entry caused by kernel preemption.
 */
/* The call_task variable is used to ensure that the result is
 * returned only to the process that made the call.  Only one
 * result can be pending for return at a time (any call entry 
 * while the variable is non-NULL is rejected).
 */

#define USE_RT 0

char respbuf[3];  // points to memory allocated to return the result

int file_value;
struct dentry *dir, *file;  // used to set up debugfs file name

/* call_task to save calling task was removed here from globals */

/* Mutex globals and wrappers */

DEFINE_MUTEX(CE);
DEFINE_MUTEX(EE);
DEFINE_RT_MUTEX(CE_rt);
DEFINE_RT_MUTEX(EE_rt);

pid_t curr_EE = 0;
pid_t curr_CE = 0;

/* Situationally locks either CE or EE of appropriate type (rt or not) */
/* THIS FUNCTION WILL BLOCK - may want to enable preemptions before lock call */
/* Returns -1 if the other lock is owned and the operation is invalid */
int my_lock(int CE_req) {
  pid_t curr_pid = task_pid_nr(current);
  if ((curr_EE == curr_pid) || (curr_CE == curr_pid)) {
    return -1;  /* Can't lock if you own another lock */
  } else if (CE_req) {
    if (USE_RT) {
      rt_mutex_lock_interruptible(&CE_rt, 0);
    } else {
      mutex_lock_interruptible(&CE);
    }
    curr_CE = curr_pid;
  } else {
    if (USE_RT) {
      rt_mutex_lock_interruptible(&EE_rt, 0);
    } else {
      mutex_lock_interruptible(&EE);
    }
    curr_EE = curr_pid;
  }
  return 0;
}

/* I'm writing a different unlock function just to have something that doesn't block */
int my_unlock(int CE_req) {
  pid_t curr_pid = task_pid_nr(current); 
  if (CE_req) {
    if(curr_CE != curr_pid) {
      return -1;
    } else if (USE_RT) {
      rt_mutex_unlock(&CE_rt);
    } else {
      mutex_unlock(&CE);
    }
    curr_CE = 0;
  } else {
    if (curr_EE != curr_pid) {
      return -1;
    } else if (USE_RT) {
      rt_mutex_unlock(&EE_rt);
    } else {
      mutex_unlock(&EE);
    }
    curr_EE = 0;
  }
  return 0;
}

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

static ssize_t getpid_call(struct file *file, const char __user *buf,
                                size_t count, loff_t *ppos)
{
  int rc;
  char callbuf[MAX_CALL];  // local (kernel) space to store call string
  int error;

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

  // allocate some kernel memory for the response

  strcpy(respbuf,""); /* initialize buffer with null string */

  /* Use the kernel function to copy from user space to kernel space.
   */

  rc = copy_from_user(callbuf, buf, count);
  callbuf[MAX_CALL - 1] = '\0'; /* make sure it is a terminated string */

  /* There are 4 valid calls */
  /* No error handling on locking yet */
  if (0 == strcmp(callbuf, "CE_Lock")) {
    error = my_lock(1);
  } else if (0 == strcmp(callbuf, "CE_UnLock")) {
    error = my_unlock(1);
  } else if (0 == strcmp(callbuf, "EE_Lock")) {
    error = my_lock(0);
  } else if (0 == strcmp(callbuf, "EE_UnLock")) {
    error = my_unlock(0);
    /* Testing options */
  } else {
    error = -1;
  }
  
      printk(KERN_DEBUG "getpid: call %s will return %s\n", callbuf, respbuf);
      preempt_enable();
      *ppos = 0;
      
  return error;  /* write() calls return the number of bytes */
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

static ssize_t getpid_return(struct file *file, char __user *userbuf,
                                size_t count, loff_t *ppos)
{
  int rc; 

  preempt_disable(); // protect static variables

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

  preempt_enable(); // clear the disable flag

  *ppos = 0;  /* reset the offset to zero */
  return rc;  /* read() calls return the number of bytes */
} 

// Defines the functions in this module that are executed
// for user read() and write() calls to the debugfs file
static const struct file_operations my_fops = {
        .read = getpid_return,
        .write = getpid_call,
};

/* This function is called when the module is loaded into the kernel
 * with insmod.  It creates the directory and file in the debugfs
 * file system that will be used for communication between programs
 * in user space and the kernel module.
 */

static int __init getpid_module_init(void)
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

static void __exit getpid_module_exit(void)
{
  debugfs_remove(file);
  debugfs_remove(dir);
  if (respbuf != NULL)
     kfree(respbuf);
}

/* Declarations required in building a module */

module_init(getpid_module_init);
module_exit(getpid_module_exit);
MODULE_LICENSE("GPL");
