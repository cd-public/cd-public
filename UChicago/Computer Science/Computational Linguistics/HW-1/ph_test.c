#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/* Type declarations and utility functions for phoenem struct */

/* Type */

typedef struct phoenem_list_struct *ph_lst;

struct phoenem_list_struct {
  char *ph;   /* phoenem */
  int fr;     /* frequency */
  ph_lst nxt; /* next node */
};

/* Initialize a ph_lst node */

ph_lst new_ph_lst(char *ph) {
  ph_lst new = (ph_lst)malloc(sizeof(struct phoenem_list_struct));
  new->ph = strdup(ph);
  new->fr = 1;
  new->nxt = NULL;
  return new;
}

/* Add an instance of a phoenem to the list */

ph_lst add_ph(char *ph, ph_lst lst, int i) {
  ph_lst ret = lst;
  if (lst == NULL) {
    lst = new_ph_lst(ph);
    lst->fr = i;
    return lst;
  }
  while (lst->nxt) {
    if (strcmp(ph, lst->ph)) {
      lst = lst->nxt;
    } else {
      lst->fr += i;
      return ret;
    }
  }
  if (strcmp(ph, lst->ph)) {
    lst->nxt = new_ph_lst(ph);
    lst->nxt->fr = i;
  } else {
    lst->fr += i;
  }
  return ret;
}

/* printer */

ph_lst print_and_delete_max(ph_lst lst, double cnt) {
  if (!(lst)) {
    return NULL;
  }
  int fr = lst->fr;
  char *ph = lst->ph;
  ph_lst pre_max = lst;
  ph_lst orig = lst;
  int first = 1; /* Boolean if orig = max */
  while (lst->nxt) {
    if (lst->nxt->fr > fr) {
      fr = lst->nxt->fr;
      ph = lst->nxt->ph;
      pre_max = lst;
      first = 0;
    }
    lst = lst->nxt;
  }
  printf("%s %d %f\n", ph, fr, ((double)fr/cnt));
  if (first) {
    return orig->nxt;
  } else {
    pre_max->nxt = pre_max->nxt->nxt;
    return orig;
  }
}

/* Main function */
/* Reads a .dx1 from stdin and prints a list of the form: */
/* <phoenem> <total occurances> <relative frequency> <newline> */
/* to stdout */

int main () {
  char buf[1024];
  char *ph = (char *)malloc(128);
  int i = 0;
  int cnt = 0;
  ph_lst lst = NULL;
  while (i < 1024) {
    buf[i++] = '\0';
  }
  i = 0;
  while (fgets(buf, 1024, stdin)) {
    buf[strlen(buf) - 1] = '\0';  /* Remove newline */
    strtok(buf, " "); /* Skip word */
    i = atoi(strtok(NULL, " "));
    while (ph = strtok(NULL, " ")) {
      lst = add_ph(ph, lst, i);
      cnt += i;
    }
  }
  double dcnt = (double)cnt;
  while (lst = print_and_delete_max(lst, dcnt)) {
    ;
  }
  return 0;
}
    
