#define MAX_CALL 100 // characters in call request string
#define MAX_LINE 900 // characters in call response string
#define MAX_RESP 1000 // total characters in buffer
// define the debugfs path name directory and file
// full path name will be /sys/kernel/debug/getpid/call
char dir_name[] = "getpinfo";
char file_name[] = "call";
