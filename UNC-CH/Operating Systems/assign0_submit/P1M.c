/*
 * Example program to allocate space for 1 million
 # double-precision floating point numbers.  The 
 * program blocks waiting for input on stdin.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

static double memory[1000][1000]; // 8 MB

int main(int argc, char* argv[])
{
  char echo_data[5];

  // block waiting for input on stdin
  fgets(echo_data, sizeof(echo_data), stdin);
  return 0;
}
