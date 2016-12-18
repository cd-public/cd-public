/*
 * A simple user space program to illustrate calling an
 * emulated "system call" in programming assignments in
 * COMP 790.  It opens the debugfs file used for calling
 * the getpid kernel module, requests the pid of the calling
 * process, and outputs the result.  It also outputs the 
 * result from the regular Linux getpid() system call so the
 * two results can be compared.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <time.h>
#include <crypt.h>

#include "uwrr.h" /* used by both kernel module and user program */

#define MAX_TIME  10  //run time in seconds

int do_syscall(char *call_string);  // does the call emulation

// variables shared between main() and the do_syscall() function
int fp;
char the_file[256] = "/sys/kernel/debug/";
char call_buf[MAX_CALL];  /* no call string can be longer */
char resp_buf[3];  /* no response strig can be longer */
void spinner(unsigned int weight) {

  unsigned long count = 0;
  pid_t my_pid;
  time_t start, elapsed, temp;

  my_pid = getpid();

  start = time(NULL);
  elapsed = 0;
  while (elapsed < 10) {
    crypt("This is my lazy password", "A1");
    count++;
    elapsed = time(NULL) - start;
  }
  printf("Weight:  %u, Elapsed time:  %ld, Iterations:  %ld\n", weight, elapsed, count);
  fflush(stdout);
  exit(0);
  return;
}
  
void main (int argc, char* argv[])
{
  int i;
  int rc = 0;
  pid_t my_pid;
  char input[20];
  unsigned int weight = 1;
  
  /* Build the complete file path name and open the file */

  strcat(the_file, dir_name);
  strcat(the_file, "/");
  strcat(the_file, file_name);

  if ((fp = open (the_file, O_RDWR)) == -1) {
      fprintf (stderr, "error opening %s\n", the_file);
      exit (-1);
  }

  // use the system call to get the pid
  my_pid = getpid();
  fprintf(stdout, "System call getpid() returns %d\n", my_pid);

  // make multiple processes
  if (fork()) {
    weight += 4;
  }
  if (fork()) {
    weight += 2;
  }
  if (fork()) {
    weight += 1;
  }
  sprintf(input, "uwrr %u", 2*weight);
  do_syscall(input);
  spinner(weight);

  close (fp);
  return;
} /* end main() */

/* 
 * A function to actually emulate making a system call by
 * writing the request to the debugfs file and then reading
 * the response.  It encapsulates the semantics of a regular
 * system call in that the calling process is blocked until
 * both the request (write) and response (read) have been
 * completed by the kernel module.
 *  
 * The input string should be properly formatted for the
 * call string expected by the kernel module using the
 * specified debugfs path (this function does no error
 * checking of input).
 */ 

int do_syscall(char *call_string)
{
  int rc;

  strcpy(call_buf, call_string);

  rc = write(fp, call_buf, strlen(call_buf) + 1);
  if (rc == -1) {
     fprintf (stderr, "error writing %s\n", the_file);
     fflush(stderr);
     exit (-1);
  }

  return rc;
}

