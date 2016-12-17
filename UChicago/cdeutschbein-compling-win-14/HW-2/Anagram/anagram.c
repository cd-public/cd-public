#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define HASHSIZE 128

/* Type declarations and utility functions for phoenem struct */

/* Types */

typedef struct word_list_struct *w_lst;

struct word_list_struct {
  char *w;   /* word */
  w_lst nxt; /* next node */
};

typedef struct anagram_list_struct *an_lst;

struct anagram_list_struct {
  char *an;     /* common letters, in alphabetically order */
  int cnt;      /* number of anagrams */
  w_lst words;  /* word list */
  an_lst nxt;   /* next node */
};

/* Initialize a w_lst node */

w_lst new_w_lst(char *w) {
  w_lst new = (w_lst)malloc(sizeof(struct word_list_struct));
  new->w = strdup(w);
  new->nxt = NULL;
  return new;
}

/* Initialize a an_lst node */

an_lst new_an_lst(char *an, char *orig) {
  an_lst new = (an_lst)malloc(sizeof(struct anagram_list_struct));
  new->an = an;
  new->words = new_w_lst(orig);
  new->cnt = 1;
  new->nxt = NULL;
  return new;
}

/* print the word list from an anagram list node */

void print_words(an_lst an) {
  w_lst lst = an->words;
  /*fprintf(stdout, "Printing %d anagrams of length %d of %s:\n  ", 
    an->cnt, (int)strlen(an->an), an->an);*/
  while (lst) {
    printf("%s ", lst->w);
    lst = lst->nxt;
  }
  putchar('\n');
  return;
}

/* Create an alphabetized version of a string */
/* I adapted this code from an online example */

char *alpha(char *s) {
  char tmp;
  int i, j, length;
  char *str = strdup(s);
  length = strlen(str);
  for(i=0; i<length-1; i++) {
    for (j=i+1; j<length; j++) {
      if (str[i] > str[j]){
	tmp=str[i];
	str[i]=str[j];
	str[j]=tmp;
      }
    }
  }
  return str;
}

/* Add a new word to a word list */
/* w_lst is assumed not to be null */

int add_word_w(char *word, w_lst lst) {
  if (strcmp(word, lst->w)) {    
    while (lst->nxt) {
      if (strcmp(word, lst->nxt->w)) {
	lst = lst->nxt;
      } else {
	return 0;
      }
    }
    lst->nxt = new_w_lst(word);
    return 1;
  }
  return 0;
}

/* Add a new word to an anagram list */

an_lst add_word_an(char *orig, an_lst lst) {
  an_lst ret = lst;
  char *an = alpha(orig);
  if (lst == NULL) {
    //printf("new list for  %s with anagram %s\n", orig, an);
    return new_an_lst(an, orig);
  }
  while (lst->nxt) {
    if (strcmp(an, lst->an)) {
      lst = lst->nxt;
    } else {
      //printf("adding %s with anagram %s to anagram %s\n", orig, an, lst->an);
      lst->cnt += add_word_w(orig, lst->words);      
      return ret;
    }
  }
  if (strcmp(an, lst->an)) {
    //printf("new list for  %s with anagram %s\n", orig, an);
    lst->nxt = new_an_lst(an, orig);
  } else {
    //printf("adding %s with anagram %s to anagram %s\n", orig, an, lst->an);
    lst->cnt += add_word_w(orig, lst->words); 
  }
  return ret;
}

/* sorter */
/* use insertion as most entries are deleted */

an_lst inst_an_lst(an_lst lst, an_lst node) {
  if (!(lst)) {
    return node;
  }
  int i = strlen(node->an);
  if ((lst->cnt >= node->cnt) && (strlen(lst->an) >= i)) {
    node->nxt = lst->nxt;
    return node;
  }
  an_lst ret = lst;
  an_lst prev;
  //printf("traversing with %s\n", node->an);
  while ((lst) && (lst->cnt < node->cnt)) {
    prev = lst;
    lst = lst->nxt;
  }
  while ((lst) && (strlen(lst->an) < i) && (lst->cnt == node->cnt)) {
    prev = lst;
    lst = lst->nxt;
  }
  lst = prev;
  //printf("%s -> %s\n", lst->an, node->an);
  node->nxt = lst->nxt;
  lst->nxt = node;
  return ret;
}

/* tar is the sorted list common to all lists */
an_lst sort_an_lst(an_lst lst, an_lst tar) {
  an_lst temp;
  while (lst) {
    if (lst->cnt < 2) {
      lst = lst->nxt;
    } else  if ((lst->cnt == 2) && (strlen(lst->an) == 8)) {
      print_words(lst);
      lst = lst->nxt;
    } else {
      temp = lst->nxt;
      lst->nxt = NULL;
      tar = inst_an_lst(tar, lst);
      lst = temp;
    }
  }
  return tar;
}

/* Hashing function */
int hash(char *str, int len) {
  int i = 0;
  int sum = 0;
  while (i < len) {
    sum += str[i++];
  }
  return (sum % HASHSIZE);
}

/* Main function */
/* Reads a .dx1 or .txt from stdin and prints a list of anagrams */
/* 
/* to stdout */

int main () {
  char buf[1024];
  char *str = (char *)malloc(128);
  int i = 0;
  int tag;
  an_lst lsts[HASHSIZE];
  an_lst to_print = NULL;

  //fprintf(stderr, "Initialize buffer\n");

  while (i < 1024) {
    buf[i++] = '\0';
  }
  i = 0;

  while (i < HASHSIZE) {
    lsts[i++] = NULL;
  }
  i = 0;

  //fprintf(stderr, "Read in\n");

  while (fgets(buf, 1024, stdin)) {

    str = strtok(buf, " "); /* read word */
    i = strlen(str);
    if (i > 8) {  /* strlen > 8 gives word len >= 8 */
      str[i-1] = '\0';
      tag = hash(str, i);
      lsts[tag] = add_word_an(str, lsts[tag]);
    }
    i = 0;
    while (buf[i] != '\0') {
      buf[i++] = '\0';
    }
  }
  i = 0;

  //fprintf(stderr, "Sorting and first pass\n");

  while (i < HASHSIZE) {
    to_print = sort_an_lst(lsts[i++], to_print);
  }

  //fprintf(stderr, "Explicit printing\n");

  while (to_print) {
    print_words(to_print);
    to_print = to_print->nxt;
  }

  //fprintf(stderr, "anagram.c complete\n\n");

  return 0;
}
