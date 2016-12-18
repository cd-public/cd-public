/*
 * Calvin Deutschbein
 
 * Adapted example kernel loadable module.  It illustrates the 
 * module infrastructure used in programming assignments
 * in COMP 790.  The only function is to accept
 * an emulated "system call" to log_faults from user space
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
#include <linux/mm_types.h>
#include <linux/mm.h>

#include "log_faults.h" /* used by both kernel module and user program 
                     * to define shared parameters including the
                     * debugfs directory and file used for emulating
                     * a system call
                     */

/* my globals, for debug and global state */
					 
int print_bool = 0;
int used = 0;

/* Could need up to 50 local vm_ops */
struct vm_area_struct *vma_addrs[50];
struct vm_operations_struct *vm_ops_locals[50];
int (*saved_faults[50]) (struct vm_area_struct *vma, struct vm_fault *wmf);

/* My fault function - everything is always my fault! */
int my_fault(struct vm_area_struct *vma, struct vm_fault *vmf) {
	int i = 0;
	const void *test = vma;
	u64 time_stamp;
	int ret = 0;
	void *arg1 = NULL; /* vma address. print with %p */
	unsigned long arg2 = 0; /* arg2 - virtual page number */
	unsigned long arg3 = 0; /* virtual page offset - pgoff_t is an unsigned long.  print with %lu */
	unsigned long arg4 = 0; /* page_to_pfn output - appears to be unsigned long in most architecture.  print with %lu */
	u64 arg5 = 0; /* elapsed time - u64 is an unsigned long long.  print with %llu */
	/* Find and perform a timed run of the appropriate fault function */
	while ((test != (void *)vma_addrs[i]) && (i < 50)) {
		i++;
	}
	time_stamp = (u64)ktime_to_us(ktime_get());
	ret = (*saved_faults[i]) (vma, vmf);
	arg5 = (u64)ktime_to_us(ktime_get()) - time_stamp;
	/* Build the log entry */
	arg1 = (void *)vma; /* Print with %p */
	arg2 = (unsigned long)vmf->virtual_address / 4096;
	arg3 = vmf->pgoff;
	if (vmf->page) {
		arg4 = page_to_pfn(vmf->page);
	}
	printk(KERN_DEBUG "VMA Addr: %p, Virt Pg No:  %lu, Virt Pg Offset:  %lu, PFN:  %lu, Elapsed:  %llu\n", arg1, arg2, arg3, arg4, arg5);
	return ret;
}

/* The following two variables are global state shared between
 * the "call" and "return" functions.  They need to be protected
 * from re-entry caused by kernel preemption.
 */
int file_value;
struct dentry *dir, *file;  // used to set up debugfs file name
	 
static ssize_t log_faults_call(struct file *file, const char __user *buf,
                                size_t count, loff_t *ppos)
{
  int rc;
  char callbuf[MAX_CALL];  // local (kernel) space to store call
  int i = 0;
  int j = 0;
  int max = 0;
  struct vm_area_struct *temp;
    
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

  /* Adding keyword 'ping' for debug */
  /* Otherwise standard parsing */
  if (strcmp(callbuf, "ping") == 0) {
	preempt_enable();
    *ppos = 0;
    return 0;
  } else if (strcmp(callbuf, "log_faults") != 0) { // only valid call is "log_faults"
    printk(KERN_DEBUG "log_faults: call %s will return -1\n", callbuf);
    preempt_enable();
	*ppos = 0;
    return -1;
  }

  /* Only allow one task to access this module */
  if (used) {
    return -1;
  }
  used = 1;

  /* Initialize globals */
  /*
struct vm_area_struct *vma_addrs[50];
struct vm_operations_struct *vm_ops_locals[50];
int (*saved_faults[50]) (struct vm_area_struct *vma, struct vm_fault *wmf);
*/
  
  memset(vma_addrs, 0, 50*sizeof(void *));
  memset(vm_ops_locals, 0, 50*sizeof(void *));
  memset(saved_faults, 0, 50*(sizeof(void *)));
  
  /* Map over up the lesser of mapcount and 50 VMAs */
  /* For each, if vm_ops and fault are non-null, replace */
  
  /* Lock rw_semaphore 'mmap_sem' of mm_struct during edits */
  
  down_write(&current->mm->mmap_sem);
  
  /* Not exhaustively nullchecking at this stage - TODO if seg faults during testing */
  
  max = current->mm->map_count;
  if (max > 50) {
	  max = 50;
  }
  
  temp = current->mm->mmap;
  for (i = 0; i < max; i++) {
	if (temp->vm_ops) {
		if (temp->vm_ops->fault) {
		  vma_addrs[j] = temp;
			saved_faults[j] = temp->vm_ops->fault;
			vm_ops_locals[j] = kmalloc(sizeof(struct vm_operations_struct), GFP_ATOMIC);
			memcpy(vm_ops_locals[j], temp->vm_ops, sizeof(struct vm_operations_struct));
			vm_ops_locals[j]->fault = my_fault;
			temp->vm_ops = vm_ops_locals[j];
			printk(KERN_DEBUG "Added vm_addrs[%d] = %p\n", j, vma_addrs[j]);
			j++;
		}
	}
	i++;
	temp = temp->vm_next;
  }
  
  up_write(&current->mm->mmap_sem);
  
  printk(KERN_DEBUG "log_faults: call %s will return 0\n", callbuf);
  preempt_enable();
  
  *ppos = 0;  /* reset the offset to zero */
  return 0;  /* write() calls return the number of bytes */
}

// Defines the functions in this module that are executed
// for user read() and write() calls to the debugfs file
static const struct file_operations my_fops = {
        .write = log_faults_call,
};

/* This function is called when the module is loaded into the kernel
 * with insmod.  It creates the directory and file in the debugfs
 * file system that will be used for communication between programs
 * in user space and the kernel module.
 */

static int __init log_faults_module_init(void)
{

  /* create an in-memory directory to hold the file */

  dir = debugfs_create_dir(dir_name, NULL);
  if (dir == NULL) {
    printk(KERN_DEBUG "log_faults: error creating %s directory\n", dir_name);
     return -ENODEV;
  }

  /* create the in-memory file used for communication;
   * make the permission read+write by "world"
   */

  file = debugfs_create_file(file_name, 0666, dir, &file_value, &my_fops);
  if (file == NULL) {
    printk(KERN_DEBUG "log_faults: error creating %s file\n", file_name);
     return -ENODEV;
  }

  printk(KERN_DEBUG "log_faults: created new debugfs directory and file\n");

  return 0;
}

/* This function is called when the module is removed from the kernel
 * with rmmod.  It cleans up by deleting the directory and file and
 * freeing any memory still allocated.
 */

static void __exit log_faults_module_exit(void)
{
  debugfs_remove(file);
  debugfs_remove(dir);
}

/* Declarations required in building a module */

module_init(log_faults_module_init);
module_exit(log_faults_module_exit);
MODULE_LICENSE("GPL");
