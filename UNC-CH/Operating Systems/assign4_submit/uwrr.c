/*
 * Calvin Deutschbein
 
 * Adapted example kernel loadable module.  It illustrates the 
 * module infrastructure used in programming assignments
 * in COMP 790.  The only function is to accept
 * an emulated "system call" to uwrr from user space
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
#include <linux/delay.h>
#include "SchedCl.h"

#include "uwrr.h" /* used by both kernel module and user program 
                     * to define shared parameters including the
                     * debugfs directory and file used for emulating
                     * a system call
                     */

/* my globals, for debug and global state */
					 
int print_bool = 0;
int is_setup = 0;
struct sched_class *my_sched_class = NULL;
long weights[25];
pid_t ids[25];
int num_tasks = 0;
static void (*task_tick_ptr)(void *rq, struct task_struct *p, int queued) = NULL;
unsigned int last_weight = 0;

		 
/* The following two variables are global state shared between
 * the "call" and "return" functions.  They need to be protected
 * from re-entry caused by kernel preemption.
 */
int file_value;
struct dentry *dir, *file;  // used to set up debugfs file name

static void my_task_tick(void *rq, struct task_struct *p, int queued) {
	/* Find weight */
	int i = 0;
	unsigned int weight = 1;
	pid_t search = task_pid_nr(current);
	while ((search != ids[i]) && (i < 25)) {
		i++;
	}
	if (i != 25) {
	  weight = (unsigned int)weights[i];
	}
	if (last_weight != weight) {
	  printk(KERN_DEBUG "End Weight %d\nStart Weight %d", last_weight, weight);
	  last_weight = weight;
	  p->rt.time_slice = 10 * weight;
	}
	task_tick_ptr(rq, p, queued);
	return;
}
 
int uwrr_setup(void) {
	 int i = 0;
	 is_setup = 1;
	 my_sched_class = kmalloc(sizeof(struct sched_class), GFP_ATOMIC);
	 if (my_sched_class == NULL) {
		return -1;
	 }	
	 memcpy(my_sched_class, current->sched_class, sizeof(struct sched_class));
	 task_tick_ptr = current->sched_class->task_tick;
	 my_sched_class->task_tick = my_task_tick;
	 while (i < 25) {
		 weights[i] = 0;
		 ids[i] = 0;
		 i++;
	 }
	 return 0;
 }
	 
 
static ssize_t uwrr_call(struct file *file, const char __user *buf,
                                size_t count, loff_t *ppos)
{
  int rc;
  char callbuf[MAX_CALL];  // local (kernel) space to store call
  int ret = 0;
  long weight = 0;
  
  /* the user's write() call should not include a count that exceeds
   * the size of the module's buffer for the call string.
   */

  if(count >= MAX_CALL)
    return -EINVAL;  // return the invalid error code
  
  preempt_disable();  // prevents re-entry possible if one process 
                      // preempts another and it also calls this module

  /* Use the kernel function to copy from user space to kernel space.
   */

  rc = copy_from_user(callbuf, buf, count);
  callbuf[MAX_CALL - 1] = '\0'; /* make sure it is a terminated string */

  if (is_setup == 0) {
    ret = uwrr_setup();
    if (ret == -1) {
      return ret;
    }
  }

  /* Adding keywords for debug */
  if (strcmp(callbuf, "enable") == 0) {
	  current->policy = SCHED_RR;
	  current->rt_priority = 1;
	  *ppos = 0;
	  return 0;
  } else if (strcmp(callbuf, "ping") == 0) {
    *ppos = 0;
    return 0;
  } else if (strncmp(callbuf, "uwrr ", 5) != 0) { // all valid calls begin with "uwrr "
      printk(KERN_DEBUG "uwrr: call %s will return -1\n", callbuf);
      preempt_enable();
      return -1;
  }

  /* IMPLEMENTATION HERE */
  
  if ((current->policy != SCHED_RR) || (current->rt_priority != 1) || (num_tasks > 23)) {
    preempt_enable();
	  *ppos = 0;
	  return -1;
  }
  num_tasks++;
  strict_strtol(callbuf+5, 10, &weight); /* Get argument from call */
  ret = (int)weight;
  weights[num_tasks] = weight;
  ids[num_tasks] = task_pid_nr(current);
  
  current->rt.time_slice = 10 * weight;

  current->sched_class = my_sched_class;
  
  /* IMPLEMENTATION DONE */

  /* testing synchronizer */
  
  while(num_tasks < 7) {
    msleep(1);
  }
  
  printk(KERN_DEBUG "uwwr: call %s will return 0\n", callbuf);
  preempt_enable();
  
  *ppos = 0;  /* reset the offset to zero */
  return 0;  /* write() calls return the number of bytes */
}

// Defines the functions in this module that are executed
// for user read() and write() calls to the debugfs file
static const struct file_operations my_fops = {
        .write = uwrr_call,
};

/* This function is called when the module is loaded into the kernel
 * with insmod.  It creates the directory and file in the debugfs
 * file system that will be used for communication between programs
 * in user space and the kernel module.
 */

static int __init uwrr_module_init(void)
{

  /* create an in-memory directory to hold the file */

  dir = debugfs_create_dir(dir_name, NULL);
  if (dir == NULL) {
    printk(KERN_DEBUG "uwrr: error creating %s directory\n", dir_name);
     return -ENODEV;
  }

  /* create the in-memory file used for communication;
   * make the permission read+write by "world"
   */

  file = debugfs_create_file(file_name, 0666, dir, &file_value, &my_fops);
  if (file == NULL) {
    printk(KERN_DEBUG "uwrr: error creating %s file\n", file_name);
     return -ENODEV;
  }

  printk(KERN_DEBUG "uwrr: created new debugfs directory and file\n");

  return 0;
}

/* This function is called when the module is removed from the kernel
 * with rmmod.  It cleans up by deleting the directory and file and
 * freeing any memory still allocated.
 */

static void __exit uwrr_module_exit(void)
{
  debugfs_remove(file);
  debugfs_remove(dir);
}

/* Declarations required in building a module */

module_init(uwrr_module_init);
module_exit(uwrr_module_exit);
MODULE_LICENSE("GPL");
