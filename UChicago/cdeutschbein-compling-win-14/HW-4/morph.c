#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define MIN_PAIRS 10
#define DEBUG 0

/* macros */

int min(int x, int y) {
  if (x < y) {
    return x;
  }
  return y;
}

int max(int x, int y) {
  if (x > y) {
    return x;
  }
  return y;
}

/* Types */

typedef struct word_list_struct *w_lst;

struct word_list_struct {
  char *w;   /* word */
  w_lst nxt; /* next node */
};

/* Initialize a w_lst node */

w_lst new_w_lst(char *w) {
  w_lst new = (w_lst)malloc(sizeof(struct word_list_struct));
  new->w = strdup(w);
  new->nxt = NULL;
  return new;
}

/* Add a new word to a word list */
/* w_lst is assumed not to be null */

w_lst add_word_w(char *word, w_lst lst) {
  w_lst ret = lst;
  if (lst == NULL) {
    return new_w_lst(word);
  }
  while (lst->nxt) {
    lst = lst->nxt;
  }
  lst->nxt = new_w_lst(word);
  return ret;
}

/* int* will frequently represent a multiset */

typedef struct tuple_list_struct *t_lst;

struct tuple_list_struct {
  char **t;  /* tuple */
  t_lst nxt; /* next node */
};

typedef struct affix_bst_struct *a_bst;

struct affix_bst_struct {
  char *a;   /* affix */
  t_lst ts;  /* tuples with affix a */
  int cnt;   /* cardinality of ts */
  a_bst more; /* next nodes */
  a_bst less;
};

t_lst new_t_lst(char **t) {
  t_lst new = (t_lst)malloc(sizeof(struct tuple_list_struct));
  new->t = t;
  new->nxt = NULL;
  return new;
}

a_bst new_a_bst(char **t) {
  a_bst new = (a_bst)malloc(sizeof(struct affix_bst_struct));
  new->a = strdup(t[5]);
  new->ts = new_t_lst(t);
  new->cnt = 1;
  new->more = NULL;
  new->less = NULL;
  return new;
}

/* Add a new tuple to a tuple list */
t_lst add_tuple_t(char **t, t_lst lst) {
  t_lst ret = new_t_lst(t);
  ret->nxt = lst;
  return ret;
}

/* Add a new tuple to a affix list (sorted by affix) */
a_bst add_tuple_a(char **t, a_bst bst) {
  a_bst ret = bst;
  int i;
  if (bst == NULL) {
    return new_a_bst(t);
  }
  while (1) {
    i = strcmp(t[5], bst->a);
    if (i < 0) {
      if (bst->less) {
        bst = bst->less;
      } else {
        bst->less = new_a_bst(t);
        return ret;
      }
    } else if (i > 0) {
      if (bst->more) {
        bst = bst->more;
      } else {
        bst->more = new_a_bst(t);
        return ret;
      }
    } else {
      bst->ts = add_tuple_t(t, bst->ts);
      bst->cnt++;
      return ret;
    }
  }
}

/* Add a new affix to a affix bst (sorted by cnt) */
a_bst add_a(a_bst add, a_bst bst) {
  a_bst ret = bst;
  int i;
  if (bst == NULL) {
    return add;
  }
  if (add == NULL) {
    return bst;
  }
  while (1) {
    i = add->cnt - bst->cnt;
    if (i < 0) {
      if (bst->less) {
        bst = bst->less;
      } else {
        bst->less = add;
        return ret;
      }
    } else if (i > 0) {
      if (bst->more) {
        bst = bst->more;
      } else {
        bst->more = add;
        return ret;
      }
    } else {
      add->more = bst;
      add->less = bst->less;
      bst->less = NULL;
      return ret;
    }
  }
}

int bst_deep(a_bst bst) {
  if (bst == NULL) {
    return 0;
  } else {
    return max(bst_deep(bst->more), bst_deep(bst->less));
  }
}

/* combine bsts by count */
a_bst combine_bsts(a_bst bst1, a_bst bst2) {
  if (bst1 == NULL) {
    return bst2;
  }
  if (bst2 == NULL) {
    return bst1;
  }
  a_bst ret = bst1;
  if (bst_deep(bst1) < bst_deep(bst2)) {
    ret = bst2;
    bst2 = bst1;
  }
  ret = combine_bsts(ret, bst2->more);
  ret = combine_bsts(ret, bst2->less);
  bst2->more = NULL;
  bst2->less = NULL;
  ret = add_a(bst2, bst1);	
  return ret;
}

/* hashing interface */
a_bst *add_tuple_a_h(char **t, a_bst *hsh) {
  a_bst *ret = hsh;
  int i;
  if (ret == NULL) {
    ret = (a_bst *)malloc(256*sizeof(a_bst));
    for(i = 0; i < 256; i++) {
      ret[i] = NULL;
    }
  }
  ret[t[5][2]] = add_tuple_a(t, ret[t[5][2]]);
  return ret;
}

/* combine by count */
a_bst combine_as_h(a_bst *hsh) {
  int i = 0;
  a_bst ret = NULL;
  for (i = 0; i < 256 ; i++) {
    ret = combine_bsts(ret, hsh[i]);
  }
  return ret;
}        
        

/* printing functions */
void print_t_lst(t_lst lst) {
  while (lst) {
    printf("%s %s\n", lst->t[0], lst->t[1]);
    lst = lst->nxt;
  }
  return;
}

void print_a_bst(a_bst bst) {
  if (bst) {
    print_a_bst(bst->more);
    if (bst->cnt >= MIN_PAIRS) {
      printf("\n=======\n%s\n=======\n", bst->a);
      print_t_lst(bst->ts);
    }
    print_a_bst(bst->less);
  }
  return;
}

/* Utility Macros for Set Functions */

int *str_to_arr(char *str) {
  int *arr = (int *)malloc(256*sizeof(int));
  int len = strlen(str);
  int i;
  for (i = 0; i < 256; i++) {
    arr[i] = 0;
  }
  for (i = 0; i < len; i++) {
    arr[str[i]]++;
  }
  return arr;
}

int len_of_arr(int *arr) {
  int i = 0;
  int len = 0;
  while (i < 256) {
    len += arr[i++];
  }
  return len;
}

char *arr_to_str(int *arr) {
  int len = 0;
  int i = 0;
  int j = 0;
  int k = 0;
  char *ret;
  ret = (char *)malloc(len_of_arr(arr));
  while (i < 256) {
    while (j < arr[i]) {
      ret[k++] = i;
      j++;
    }
    j = 0;
    i++;
  }
  return ret;
}

/* alphabetize */
char *alpha(char *str) {
  return arr_to_str(str_to_arr(str));
}

int *intersect(int *set1, int *set2) {
  int i;
  int *arr = (int *)malloc(256*sizeof(int));
  for (i = 0; i < 256; i++) {
    arr[i] = min(set1[i], set2[i]);
  }
  return arr;
}

int *setminus(int *set1, int *set2) {
  int i;
  int *arr = (int *)malloc(256*sizeof(int));
  for (i = 0; i < 256; i++) {
    arr[i] = max(0, (set1[i] - set2[i]));
  }
  return arr;
}


/* Forms 3-Tuple Defined in Part 1 */
/* Does not require alphabetized strings (for non-class uses) */
char **funcs(char *str1, char *str2) {
  char **ret = (char **)malloc(3*sizeof(char *));
  int *set1 = str_to_arr(str1);
  int *set2 = str_to_arr(str2);
  int *intr = intersect(set1, set2);
  ret[0] = arr_to_str(intr);
  ret[1] = arr_to_str(setminus(set1, intr));
  ret[2] = arr_to_str(setminus(set2, intr));
  return ret;
}

char **print_funcs(char *str1, char *str2) {
  char *alpha1 = alpha(str1);
  char *alpha2 = alpha(str2);
  char **tuple = funcs(alpha1, alpha2);
  printf("str1 = %s\nstr2 = %s\nalp1 = %s\nalp2 = %s\nintr = %s\n1-in = %s\n2-in = %s\n", 
          str1, str2, alpha1, alpha2, tuple[0], tuple[1], tuple[2]);
  return tuple;
}

/* determines if set1 alphabetically before set2 */
int arr_first(int *set1, int *set2) {
  int i;
  for(i = 0; i < 256; i++) {
    //printf("i = %d, set1[i] = %d, set2[i] = %d\n", i, set1[i], set2[i]);
    if (set1[i] > set2[i]) {
      return 1;
    } else if (set1[i] < set2[i]) {
      return 0;
    }
  }
  return 1; //default to set1 first
}

char *unord_sig(int *set1, int *set2) {
  char *str1;
  char *str2;
  int i;
  int len1;
  int len2;
  char *ret;
  if (arr_first(set1, set2)) {
    len1 = len_of_arr(set1);
    len2 = len_of_arr(set2);
    str1 = arr_to_str(set1);
    str2 = arr_to_str(set2);
  } else {
    len1 = len_of_arr(set2);
    len2 = len_of_arr(set1);
    str1 = arr_to_str(set2);
    str2 = arr_to_str(set1);
  }
  if (len1 == 0) {
    str1 = "0";
    len1 = 1;
  }
  if (len2 == 0) {
    str2 = "0";
    len2 = 1;
  }
  ret = (char *)malloc(len1 + len2 + i);
  for(i = 0; i < len1; i++) {
    ret[i] = str1[i];
  }
  ret[i++] = '-';
  len1++;
  for(i = 0; i < len2; i++) {
    ret[i+len1] = str2[i];
  }
  return ret;
}

/* find pairs of words */
char **findpairsofwords(char *w1, char *w2, char *m1, char *m2, int msl, int ma) {
  char **ret = (char **)malloc(6*sizeof(char *));
  int *set1 = str_to_arr(w1);
  int *set2 = str_to_arr(w2);
  int *intr = intersect(set1, set2);
  if (len_of_arr(intr) < msl) {
    return NULL;
  }
  set1 = setminus(set1, intr);
  if (len_of_arr(set1) > ma) {
    return NULL;
  }
  set2 = setminus(set2, intr);
  if (len_of_arr(set2) > ma) {
    return NULL;
  }
  ret[0] = w1;
  ret[1] = w2;
  ret[2] = arr_to_str(intr);
  ret[3] = arr_to_str(set1);
  ret[4] = arr_to_str(set2);
  ret[5] = unord_sig(set1, set2);
  return ret;
}

char **fpow(char *w1, char *w2) {
  return findpairsofwords(w1, w2, NULL, NULL, 4, 4);
}

char **print_fpow(char *w1, char *w2) {
  char **tuple = fpow(w1, w2);
  int i;
  if (DEBUG) {
    if (tuple) {
      printf("Printing Wordpair...\n");
      for (i = 0; i < 6; i++) {
        printf("%s\n", tuple[i]);
      }
    } else {
      printf("Invalid Wordpair...\n");
    }
  }
  return tuple;
}

/* processes all word pairs */
a_bst all_pairs(char **words, int wordcnt) {
  int i = 0;
  int j = 1;
  char **t;
  a_bst *hsh = NULL;
  while (i < (wordcnt - 1)) {
    fprintf(stderr, "%d / %d\n", i, wordcnt);
    while (j < wordcnt) {
      t = fpow(words[i], words[j]);
      if (t) {
        hsh = add_tuple_a_h(t, hsh);
      }
      j++;
    }
    i++;
    j = i + 1;
  }
  return combine_as_h(hsh);
}

a_bst print_all_pairs(char **words, int wordcnt) {
  a_bst bst = all_pairs(words, wordcnt);
  print_a_bst(bst);
  return bst;
}

/* helper for in_mul_pairs */
int check_word(char *word, a_bst as) {
  int cnt = 0;
  t_lst ts;
  if (as == NULL) {
    return 0;
  }
  ts = as->ts;
  while (ts) {
    if ((strcmp(word, ts->t[0]) == 0) || (strcmp(word, ts->t[1]) == 0)) {
      cnt++;
      ts = NULL; 
    }
    ts = ts->nxt;
  }
  cnt += check_word(word, as->more);
  cnt += check_word(word, as->less);
  return cnt;
}
  

w_lst in_mul_pairs(char **in, int incnt, a_bst as) {
  int i;
  w_lst ws;
  for(i = 0; i < incnt; i++) {
    if (check_word(in[i], as) > 1) {
      add_word_w(in[i], ws);
    }
  }
  return ws;
} 

    
  
/* prints affix pairings */
int main() {
  int i = 0;
  int wordcnt = 0;
  int wordmax = 1024;
  char *word;
  char buf[1024];
  char **words = (char **)malloc(wordmax * sizeof(char *));

  while (i < 1024) {
    buf[i++] = '\0';
  }
  i = 0;

  if (DEBUG) {
    printf("Reading in...\n");
  }

  while (fgets(buf, 1024, stdin)) {

    if (wordcnt == wordmax) {
      wordmax <<= 2;
      words = realloc(words, wordmax * sizeof(char *));
    }
    
    word = strdup(strtok(buf, " "));
    if (strlen(word) > 3) {  // must meet minimum stem length
      words[wordcnt++] = word;
    }
    //printf("word = %s\n", word);
  }

  if (DEBUG) {
    printf("words:\n");
    while (i < wordcnt) {
      printf("%40s ", words[i++]);
      if (!(i % 3)) {
        putchar('\n');
      }
    }
    i = 0;
    putchar('\n');
  }
  i = 0;
  print_all_pairs(words, wordcnt);

  return 0;
}
  
