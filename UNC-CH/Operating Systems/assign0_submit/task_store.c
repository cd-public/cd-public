#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "task.h"


/* 50 tasks max */
#define MAX_TASKS 50
int tasks_stored = 0;
task **taskset;
char **parms;
int printbool = 1;

void *Malloc(size_t size) {
  void *ret;
  ret = malloc(size);
  if (ret) {
    return ret;
  } else if (printbool) {
    fprintf(stderr, "Malloc failed!\n\nExiting...\n\n");
  }
  exit(1);
}

/* Brute force search for parms.  Only 50 (or MAX_TASKS) anyway! */
int parms_search(char *parm) {
  int i = 0;
  if (printbool) {
    fprintf(stderr, "Searching for task with identifier %s.\n\n", parm);
  }
  while (parms[i]) {
    if (0 == strcmp(parms[i],parm)){
      if (printbool) {
	fprintf(stderr, "Identifier %s found, task index = %d\n\n", parms[i], i);
      }
      return i;
    } else {
      if (printbool) {
	fprintf(stderr, "Identifier %s found not to match target %s.\n\n", parms[i], parm);
      }
      i++;
      if (i = MAX_TASKS) {
	return -1;
      }
    }
  }
  return -1;
}

void *ts_store(char *parm, task *ptr)
{
  task *curr;
  int index;
  if (printbool) {
    fprintf(stderr, "Received task %p to store.\n\n", curr);
  }
  if (ptr) {
    /* Track number of identifier of task slated for storage */
    /* Create a local copy of the tasks and and populated */
    if (printbool) {
      fprintf(stderr, "Checking for previous declarations with parm = %s\n\n", parm);
    }
    index = parms_search(parm);
    /* If this isn't an overwrite, get a new index */
    if (index < 0) {
      if (printbool) {
	fprintf(stderr, "No previous instance found, getting new index...\n\n");
      }
      index = tasks_stored++;
    } else if (printbool) {
	fprintf(stderr, "Previous instance found index = %d\n\n", index);
    }
    if (printbool) {
      fprintf(stderr, "%d/50 stored tasks.\n\n", tasks_stored);
    }
    if (tasks_stored >= MAX_TASKS) {
      return NULL;
    }
    taskset[index] = (task *)Malloc(sizeof(task));
    curr = taskset[index];
    parms[index] = parm;
    curr->pid = ptr->pid;
    if (printbool) {
      fprintf(stderr, "Task %p has pid %ld\n\nProceeding to null-check substructures.\n\n", curr, curr->pid);
    }
    /* Populate structure recursively while null-checking */
    if (ptr->vm_ptr) {
      if (printbool) {
	fprintf(stderr, "VM non-null for task pid %ld\n\n", curr->pid);
      }
      curr->vm_ptr = (VM *)Malloc(sizeof(VM));
      if (ptr->vm_ptr->paged_ptr) {
	if (printbool) {
	  fprintf(stderr, "Paged  non-null for task pid %ld\n\n", curr->pid);
	}
	curr->vm_ptr->paged_ptr = (paged *)Malloc(sizeof(paged));
	/* Treating all field values as immediates rather than pointers per Thurs discussion */
	curr->vm_ptr->paged_ptr->paged_start = ptr->vm_ptr->paged_ptr->paged_start;
	curr->vm_ptr->paged_ptr->paged_end = ptr->vm_ptr->paged_ptr->paged_end;
	if (printbool) {
	  fprintf(stderr, "Paged  start = %p || Paged  end = %p\n\n", 
		  curr->vm_ptr->paged_ptr->paged_start, 
		  curr->vm_ptr->paged_ptr->paged_end);
	}
      }
      if(ptr->vm_ptr->pinned_ptr) {
	if (printbool) {
	  fprintf(stderr, "Pinned non-null for task pid %ld\n\n", curr->pid);
	}
	curr->vm_ptr->pinned_ptr = (pinned *)Malloc(sizeof(pinned));
	/* Again, immediates rather than pointers. */
	curr->vm_ptr->pinned_ptr->pinned_start = ptr->vm_ptr->pinned_ptr->pinned_start;
	curr->vm_ptr->pinned_ptr->pinned_end = ptr->vm_ptr->pinned_ptr->pinned_end;
	if (printbool) {
	  fprintf(stderr, "Pinned start = %p || Pinned end = %p\n\n",
		  curr->vm_ptr->pinned_ptr->pinned_start,
		  curr->vm_ptr->pinned_ptr->pinned_end);
	}
      }
    }
    if (ptr->fs_ptr) {
      if (printbool) {
	fprintf(stderr, "FS     non-null for task pid %ld\n\n", curr->pid);
      }
      curr->fs_ptr = (FS *)Malloc(sizeof(FS));
      curr->fs_ptr->inode_start = ptr->fs_ptr->inode_start;
      curr->fs_ptr->inode_end = ptr->fs_ptr->inode_end;
      if (printbool) {
	fprintf(stderr, "Inode  start = %ld || Inode end = %ld\n\n",
		curr->fs_ptr->inode_start,
		curr->fs_ptr->inode_end);
      }
    }
  }
  return curr;
}

void *ts_locate(char *parm1)
{
  /* Null check - just in case! */
  if (!parm1) {
    return NULL;
  }
  if (printbool) {
    fprintf(stderr, "Received locate request \"%s\"\n\n", parm1);
  }
  /* Parse the parm string */
  int len = strlen(parm1);
  char *parm = strdup(parm1);
  char *id = strtok(parm, " ");
  char *struct_name = strtok(NULL, "_");
  char *field_name = strtok(NULL, " ,.-");
  if (printbool) {
    fprintf(stderr, "PARSE:\n\nid = %s\nstruct = %s\n",
	    id, struct_name);
    if (field_name) {
      fprintf(stderr, "field = %s\n", field_name);
    }
    fprintf(stderr, "END PARSE\n\n");
  }
  int index = parms_search(id);
  if (index < 0) {
    return NULL;
  }
  task *curr = taskset[index];
  void *to_return = malloc(sizeof(void *));
  if ('d' == struct_name[2]) {
    if (printbool) {
      fprintf(stderr, "Returning pid = %ld\n\n", curr->pid);
    }
    return &curr->pid;
  }
  /* Other than for PID, field_name is non-null. */
  if (2 > strlen(field_name)) {
    if (printbool) {
      fprintf(stderr, "Malformed locate parameter request.\n\nReturning null.\n\n");
      return NULL;
    }
  }
  /* Parameters have a unique second letter and first letter after underscore */
  /* I'll just assumed request are well-formed.  Otherwise output is undefined. */
  if ('a' == struct_name[1]) {
    if ('s' == field_name[0]) {
      to_return = &curr->vm_ptr->paged_ptr->paged_start;
    } else {
      to_return = &curr->vm_ptr->paged_ptr->paged_end;
    }
  } else if ('i' == struct_name[1]) {
    if ('s' == field_name[0]) {
      to_return = &curr->vm_ptr->pinned_ptr->pinned_start;
    } else {
      to_return = &curr->vm_ptr->pinned_ptr->pinned_end;
    }
    if (printbool) {
      fprintf(stderr, "Returning %s_%s = %p\n\n", struct_name, field_name, to_return);
    }
  } else {
    if ('s' == field_name[0]) {
      to_return = (void *)&curr->fs_ptr->inode_start;
    } else {
      to_return = (void *)&curr->fs_ptr->inode_end;
    }
    if (printbool) {
      fprintf(stderr, "Returning inode_%s = %ld\n\n", field_name, (long)to_return);
    } 
  }
  return to_return;
} 

void *task_store(enum operation op, char *parm, task *ptr)
{
  if (printbool) {
    fprintf(stderr, "\n\n   ===   ENTERING TASK_STORE   ===\n\n\n");
  }
  switch(op) {
  case STORE:
    return ts_store(parm, ptr);
  case LOCATE:
    return ts_locate(parm);
  case INIT:
    /* Perform locally as it is deterministic. */
    if (printbool) {
      fprintf(stderr, "Entering initialization routine.\n\n");
    }
    tasks_stored = 0;
    taskset = (task **)Malloc(MAX_TASKS*sizeof(task *));
    parms = (char **)Malloc(MAX_TASKS*sizeof(char *));
    /* Manual > memset with 2 structures in IA 32 */
    int i;
    for (i = 0; i < MAX_TASKS; i++) {
      taskset[i] = NULL;
      parms[i] = NULL;
    }
    if (printbool) {
      fprintf(stderr, "Initiatlization successful.\n\n");
    }
  default:
    return (void *)1;
  }
}
