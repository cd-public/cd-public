// paged has addresses (pointers) to the
// beginning and end of paged virtual memory
typedef struct {
  void *paged_start;
  void *paged_end;
} paged;

// pinned has addresses (pointers) to the
// beginning and end of pinned virtual memory
typedef struct {
  void *pinned_start;
  void *pinned_end;
} pinned;

// VM has pointers to the structures that
// represent paged and pinned virtual memory allocations
typedef struct {
  paged *paged_ptr;
  pinned *pinned_ptr;
} VM;

// FS has the inode index values for the start and end
// of the file system on disk
typedef struct {
  long inode_start;
  long inode_end;
} FS;

// task has the process identifier and pointers to the
// structures representing virtual memory and the file
// system allocated for this task
typedef struct {
  long pid;
  VM *vm_ptr;
  FS *fs_ptr;
} task;

// the operations supported by the task_store function
// INIT - initialize any local data used internal to the function
// STORE - make a local copy of the task representation
// LOCATE - return a pointer to a field in the local copy
enum operation {INIT, STORE, LOCATE};

// parm is a character string with operation-specific meanings
// INIT - not used
// STORE - a numeric task identifier for a stored task
// LOCATE - a numeric task identifier and a field name
// ptr is used only for STORE and gives the address of a task
void *task_store(enum operation op, char *parm, task *ptr);

