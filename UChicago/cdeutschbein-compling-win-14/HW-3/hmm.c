#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <float.h>

#define VERBOSEFLAG 0
#define DEBUG 0

/* Globals */

char *letters;
int lettercnt;
int statecnt;

/* Structures */

struct state_struct {
  double *trns;
  double *ems;
};

typedef struct state_struct *state;

struct states_struct {
  state *ptrs;
  double *pi;
};

typedef struct states_struct *states;

state new_state() {
  int i = 0;
  double *trns = (double *)malloc(statecnt * sizeof(double));
  double *ems = (double *)malloc(lettercnt * sizeof(double));
  state ret = (state)malloc(sizeof(struct state_struct));
  ret->trns = trns;
  ret->ems = ems;
  while (i < statecnt) {
    trns[i++] = 0;
  }
  i = 0;
  while (i < lettercnt) {
    ems[i++] = 0;
  }
  i = 0;
  return ret;
}

states new_states() {
  int i = 0;
  state *ptrs = (state *)malloc(statecnt * sizeof(state));
  double *pi = (double *)malloc(statecnt * sizeof(double));
  states ret = (states)malloc(sizeof(struct states_struct));
  ret->ptrs = ptrs;
  ret->pi = pi;  
  while (i < statecnt) {
    ptrs[i] = new_state();
    pi[i] = 0;
    i++;
  }
  return ret;
}

void free_state(state tar) {
  free(tar->trns);
  free(tar->ems);
  free(tar);
  return;
}

void free_states(states tar) {
  int i = 0;
  while (i < statecnt) {
    free_state(tar->ptrs[i++]);
  }
  free(tar->ptrs);
  free(tar->pi);
  return;
}

state make_state() {
  int i = 0;
  double total = 0;
  double *trns = (double *)malloc(statecnt * sizeof(double));
  double *ems = (double *)malloc(lettercnt * sizeof(double));
  state ret = (state)malloc(sizeof(struct state_struct));
  ret->trns = trns;
  ret->ems = ems;
  if (VERBOSEFLAG) {
    printf("Transitions\n");
  }
  while (i < statecnt) {
    trns[i] = (double)rand();
    total += trns[i++];
  }
  i = 0;
  if (total == 0) {
    total = DBL_MIN;
  }
  while (i < statecnt) {
    trns[i] /= total;
    if (VERBOSEFLAG) {
      printf("  To state %8d %.4f\n", i, trns[i]);
    }
    i++;
  }
  i = 0;
  total = 0;
  if (VERBOSEFLAG) {
    printf("\nEmission probablities:\n");
  }
  while (i < lettercnt) {
    ems[i] = (double)rand();
    total += ems[i++];
  }
  i = 0;
  if (total == 0) {
    total = DBL_MIN;
  }
  while (i < lettercnt) {
    ems[i] /= total;
    if (VERBOSEFLAG) {
      printf("  Letter %c %.4f\n", letters[i], ems[i]);
    }
    i++;
  }
  if (VERBOSEFLAG) {
    printf("  Total: %1.1f\n\n", total/total);
  }
  return ret;
}

states make_states() {
  int i = 0;
  double total = 0;
  state *ptrs = (state *)malloc(statecnt * sizeof(state));
  double *pi = (double *)malloc(statecnt * sizeof(double));
  states ret = (states)malloc(sizeof(struct states_struct));
  ret->ptrs = ptrs;
  ret->pi = pi;

  if (VERBOSEFLAG) {
    printf("---------------------------------\n");
    printf("- Initialization                -\n");
    printf("---------------------------------\n");
  }
  
  while (i < statecnt) {
    if (VERBOSEFLAG) {
      printf("Creating State %1d\n", i);
    }
    ptrs[i++] = make_state();
  }
  i = 0;
  total = 0;
  if (VERBOSEFLAG) {
    printf("\n---------------------------------\nPi:\n");
  }
  
  while (i < statecnt) {
    pi[i] = (double)rand();
    total += pi[i++];
  }
  i = 0;
  if (total == 0) {
    total = DBL_MIN;
  }
  while (i < statecnt) {
    pi[i] /= total;
    if (VERBOSEFLAG) {
      printf("  To state %8d %.4f\n", i, pi[i]);
    }
    i++;
  }
  if (VERBOSEFLAG) {
    printf("\n\n");
  }
  return ret;
}

int *order_indices(double *arr, int len) {
  int j = 0;
  int *order = (int *)malloc(len * sizeof(int));
  double max = 0;
  int temp = 0;
  double last_max = 1;
  int curr_ind = 0;
  int max_ind;
  while (curr_ind < len) {
    while (j < len) {
      //printf("curr_ind = %2d, len = %2d, j = %2d, max = %.4f, last_max = %.4f, arr[j] = %.4f\n", curr_ind, len, j, max, last_max, arr[j]);
      if ((arr[j] > max) && (arr[j] < last_max)) {
        max = arr[j];
        max_ind = j;
      }
      j++;
    }
    j = 0;
    last_max = max;
    order[curr_ind++] = max_ind;
    max = 0;
  }
  return order;
}
 

void print_state(state tar) {
  int *order = order_indices(tar->trns, statecnt);
  int i = 0;
  int j = 0;
  printf("> Transition Values <\n\n");
  while (i < statecnt) {
    printf("State %2d:  Probability:  %.7f\n", order[i], tar->trns[order[i]]);
    i++;
  }
  putchar('\n');
  free(order);
  printf(">Emission Values <\n\n");
  order = order_indices(tar->ems, lettercnt);
  while (j < lettercnt) {
    printf("Letter %c:  Probability:  %.7f\n", letters[order[j]], tar->ems[order[j]]);
    j++;
  }
  return;
}

states print_states(states model) {
  int i = 0;
  putchar('\n');
  printf("================================\n");
  printf("= Printing Hidden Markov Model =\n");
  printf("================================\n\n\n");
  printf("-------------\n");
  printf("- Pi Values -\n");
  printf("-------------\n\n");
  while (i < statecnt) {
    printf("State %2d:  Probability:  %.7f\n", i, model->pi[i]);
    i++;
  }
  i = 0;
  putchar('\n');
  while(i < statecnt) {
    printf("-------------------\n");
    printf("- State %2d Values -\n", i);
    printf("-------------------\n\n");
    print_state(model->ptrs[i]);
    i++;
    putchar('\n');
  }
  putchar('\n');
  return model;
}
  
  

void norm_state(state ret) {
  int i = 0;
  int j = 0;
  double total = 0;
  double *trns = ret->trns;
  double *ems = ret->ems;
  while (i < statecnt) {
    total += trns[i++];
  }
  i = 0;
  if (total == 0) {
    total = DBL_MIN;
  }
  while (i < statecnt) {
    trns[i++] /= total;
  }
  i = 0;
  while (i < lettercnt) {
    if (VERBOSEFLAG) {
      printf("    letter: %c\n", letters[i]);
    }
    if (VERBOSEFLAG) {
      while (j < statecnt) {
        printf("      to state  %d:   %3.3f  %c\n", j, ems[i]*trns[j++], letters[i]);
      }
      j = 0;
      putchar('\n');
    }
    total += ems[i++];
  }
  i = 0;
  if (total == 0) {
    total = DBL_MIN;
  }
  while (i < lettercnt) {
    ems[i] /= total;
    if (VERBOSEFLAG) {
      printf("    letter: %c  probability:  %.4f\n", letters[i], ems[i]);
    }
    i++;
  }
  if (VERBOSEFLAG) {
    putchar('\n');
  }
  return;
}

void norm_states(states ret) {
  int i = 0;
  int j = 0;
  state *ptrs = ret->ptrs;
  double *pi = ret->pi;
  state curr;
  if (VERBOSEFLAG) {
    printf("Emission\n\n");
  }
  while (i < statecnt) {
    if (VERBOSEFLAG) {
      printf("  From State:  %d\n", i);
    }
    norm_state(ptrs[i++]);
  }
  i = 0;
  while (i < statecnt) {
    curr = ptrs[i];
    if (VERBOSEFLAG) {
      printf("  From State:  %d\n", i);
      while (j < statecnt) {
        printf("    To state:  %d: %.4f\n", j, ptrs[i]->trns[j++]);
      }
      j = 0;
      putchar('\n');
    }
    i++;
  }
  i = 0;
  while (i < statecnt) {
    if (VERBOSEFLAG) {
      printf("  To state %8d %.4f\n", i, pi[i]);
    }
    i++;
  }
  i = 0;
  if (VERBOSEFLAG) {
    printf("--------------------\nPi:\n");
    while (i < statecnt) {
      printf("  State %d %.4f\n", i, ret->pi[i]);
      i++;
    }
  }
  return;
}

/* Utilities */

int index_letter(char letter) {
  int i = 0;
  while (i < lettercnt) {
    if (letter == letters[i]) {
      return i;
    }
    i++;
  }
  return -1;
}

/* Helper functions to forward/backward */

/* Probability of Transition from states given by indices while emitting c given model */
double trans_prob(int to_ind, int from_ind, char c, states model) {
  state from_state = model->ptrs[from_ind];
  return (from_state->trns[to_ind] * from_state->ems[index_letter(c)]);
}

/* Probability of emitting word starting from state given by index given model as an array */
double *prob_from_state_to_state(char *word, int state_ind, states model) {
  double *cum = (double *)malloc(statecnt * sizeof(double));
  int len = strlen(word);
  double *temp = (double *)malloc(statecnt * sizeof(double));
  int i = 0;
  int j = 0;
  int k = 0;
  char letter;
  double ret = 0;
  if (len == 0) {
    NULL;
  }
  while (i < statecnt) {
    cum[i] = trans_prob(i, state_ind, *word, model);
    temp[i] = 0;
    i++;	
  }
  i = 1;
  while (i < len) {
    letter = word[i];
    while (j < statecnt) {
      while (k < statecnt) {
        temp[j] += cum[k]*trans_prob(j, k, letter, model);
        k++;
      }
      k = 0;
      j++;
    }
    j = 0;
    while (j < statecnt) {
      cum[j] = temp[j];
      temp[j++] = 0;
    }
    j = 0;
    i++;
  }
  i = 0;
  free(temp);
  return cum;
}

/* Probability of emitting word starting from state given by index given model */
double prob_from_state(char *word, int state_ind, states model) {
  if (strlen(word) == 0) {
    return 1;
  }
  double *temp = prob_from_state_to_state(word, state_ind, model);
  double ret = 0;
  int i = 0;
  while (i < statecnt) {
    ret += temp[i];
    i++;	
  }
  free(temp);
  return ret;
}

/* subfunction for beta */
void process_word_beta(char *word, states model) {
  printf("Beta:\n");
  int time = 1;
  int i = 0;
  int max_time = strlen(word) + 1;
  printf("Time  1 ");
  while (i < statecnt) {
    double prob = prob_from_state(word, i, model);
    printf("State %d: %.7f  ", i, (model->pi[i])*(prob_from_state(word, i, model)));
    i++;
  }
  putchar('\n');
  i = 0;
  time = 2;
  while (time <= max_time) {
    printf("Time %2d ", time);
    while (i < statecnt) {
      printf("State %d: %.7f  ", i, prob_from_state(word + time - 1, i, model));
      i++;
    }
    i = 0;
    putchar('\n');
    time++;
  }
  return;
}

/* probability of a word in model */
double word_prob(char *word, states model) {
  double total = 0;
  int i = 0;
  while (i < statecnt) {
    total += model->pi[i] * prob_from_state(word, i, model);
    i++;
  }
  return total;
}

/* probability of all words in a model */
double words_prob(char **words, states model, int wordcnt) {
  double total = 0;
  int i = 0;
  while (i < wordcnt) {
    total += word_prob(words[i], model);
    i++;
  }
  if (VERBOSEFLAG) {
    printf("Total Probability of All Strings:   %.7f\n\n", total);
  }
  return total;
}

/* Prints (if enabled) the forwards and backwards of a word in model */
void process_word(char *word, states model) {
  int time = 1;
  int i = 0;
  int j = 0;
  int max_time = strlen(word) + 1;
  double *cum = (double *)malloc(statecnt * sizeof(double));
  double *temp = (double *)malloc(statecnt * sizeof(double));
  double prob = 0;
  double total = 0;;
  char letter;
  int pass = 0;
  if (VERBOSEFLAG) {
    printf("*** word:  %s***\n\nForward\n", word);
  }
  while (i < statecnt) {
    cum[i] = model->pi[i];
    if (VERBOSEFLAG) {
      printf("Pi of state  %d  %.4f\n", i, model->pi[i]);
    }
    i++;	
  }
  time = 2;
  i = 0;
  while (pass < 2) {
    if (VERBOSEFLAG & pass) {
      printf("Alpha:\nTime  1 ");
      while (i < statecnt) {
	cum[i] = model->pi[i];
	printf("State %d:  %.7f  ", i, model->pi[i]);
	i++;
      }
      putchar('\n');
      i = 0;	
    }
    while (time <= max_time) {
      letter = word[time - 2];
      if (VERBOSEFLAG) {
        if (pass) {
	  printf("Time %2d ", time);
        } else {
	  printf("  time %d: '%c'\n", time, letter);
        }
      }
      while (i < statecnt) {
	if (VERBOSEFLAG) {
          if (pass) {
	    printf("State %d:  ", i);
          } else {
	    printf("    to state:%d:\n", i);
	  }
      	}
	while (j < statecnt) {
	  prob += cum[i]*trans_prob(i, j, letter, model);
	  if (VERBOSEFLAG & !(pass)) {
	    printf("      from state  %d Alpha: %f\n", j, prob);
	  }
          j++;
	}
	temp[i] += prob;
	total += prob;
        if (VERBOSEFLAG & pass) {
          printf("%.7f  ", prob);
        }
	prob = 0;
	j = 0;
        i++;
      }
      if (VERBOSEFLAG) {
        if (pass) {
          putchar('\n');
        } else {
          printf("    Total at this time: %f\n", total);
        }
      }
      total = 0;
      i = 0;
      while (i < statecnt) {
	cum[i] = temp[i];
	temp[i] = 0;
        i++;
      }
      i = 0;
      time++;
    }
    while (i < statecnt) {
      cum[i]= model->pi[i];
      i++;
    }
    i = 0;
    time = 2;
    pass++;
  }
  if (VERBOSEFLAG) {
    printf("\n\n");
  }
  free(cum);
  free(temp);
  if (VERBOSEFLAG) {
    process_word_beta(word, model);
    putchar('\n');
  }
  return;
}

/* Returns a normalized square matrix of dimension statecnt */
/* Ret[i][j] corresponds to the softcount of word[i] from state i to state j */
double **soft_counter(char *word, int ind, states model) {
  int i = 0;
  int j = 0;
  double *temp = (double *)malloc(statecnt * sizeof(double));
  double *ptr;
  double **ret = (double **)malloc(statecnt * sizeof(double *));
  char *work = strdup(word);
  char letter = word[ind];
  double total = 0;
  work[ind] = '\0';
  while (i < statecnt) {
    ret[i] = (double *)malloc(statecnt * sizeof(double));
    temp[i] = 0;
    i++;
  }
  i = 0;
  while (i < statecnt) {
    ptr = prob_from_state_to_state(work, i, model);
    while (j < statecnt) {
      temp[j] += model->pi[i]*ptr[j];
      j++;
    }
    j = 0;
    free(ptr);
    i++;
  }
  i = 0;
  while (i < statecnt) {
    while (j < statecnt) {
      ret[i][j] = temp[i]*trans_prob(j, i, letter, model);
      total += ret[i][j];
      j++;
    }
    j = 0;
    i++;
  }
  i = 0;
  if (total == 0) {
    total = DBL_MIN;
  }
  while (i < statecnt) {
    while (j < statecnt) {
      ret[i][j] /= total;
      j++;
    }
    j = 0;
    i++;
  }
  i = 0;
  free(temp);
  free(work);
  return ret;
}

void print_soft(char *word, states model) {
  if (!(VERBOSEFLAG)) {
    return;
  }  
  int i = 0;
  int j = 0;
  int k = 0;
  int len = strlen(word);
  double prob = word_prob(word, model);
  double **matrix;
  printf("---------------------------\n");
  printf("- Soft Counts             -\n");
  printf("---------------------------\n\n");
  printf("String Probability from Alphas: %f\n", prob);
  printf("String Probability from Betas:  %f\n\n", prob);
  while (i < len) {
    printf("  Letter: %c\n", word[i]);
    matrix = soft_counter(word, i, model);
    while (j < statecnt) {
      printf("    From state: %d\n", j);
      while (k < statecnt) {
        printf("      to state:   %d   %.4f;\n", k, matrix[j][k]);
        k++;
      }
      putchar('\n');
      k = 0;
      j++;
    }
    j = 0;
    while (j < statecnt) {
      free(matrix[j++]);
    }
    free(matrix);
    j = 0;
    i++;
  }
  return;
}

void word_max(char *word, states model, states maxed) {
  int len = strlen(word);
  int i = 0;
  int j = 0;
  int k = 0;
  int ind;
  double **temp;
  while (i < len) {
    temp = soft_counter(word, i, model);
    ind = index_letter(word[i]);
    while (j < statecnt) {
      while (k < statecnt) {
        maxed->ptrs[j]->ems[ind] += temp[j][k];
        maxed->ptrs[j]->trns[k] += temp[j][k];
        k++;
      }
      k = 0;
      j++;
    }
    j = 0;
    i++;
  }     
  return;
}

states maximizer(char **words, int wordcnt, states model) {
  states maxed = new_states();
  int i = 0;
  fflush(stdout);	
  while (i < statecnt) {
    maxed->pi[i] = model->pi[i];
    i++;
  }
  fflush(stdout);	
  i = 0;
  while (i < wordcnt) {
    word_max(words[i], model, maxed);
    i++;
  }
  norm_states(maxed);
  return maxed;
}

/* maximize iter times */
states iter_max(char **words, int wordcnt, states model, int iter) {
  int i = 0;
  states temp;
  while (i < iter) {
    temp = model;
    model = maximizer(words, wordcnt, model);
    free_states(temp);
    i++;
  }
  return model;
}

/* maximize until probability between runs changes by less than percentage */
states cond_max(char **words, int wordcnt, states model, int percentage) {
  states temp;
  double last_prob = 0;
  double curr_prob = words_prob(words, model, wordcnt);
  double scale = ((double)percentage)/100 + 1;
  while (curr_prob > (scale * last_prob)) {
    temp = model;
    model = maximizer(words, wordcnt, model);
    free_states(temp);
    last_prob = curr_prob;
    curr_prob = words_prob(words, model, wordcnt);
  }
  return model;
}

void print_viterbi(char *word, states model) {
  int len = strlen(word);
  int **path = (int **)malloc(statecnt * sizeof(int *));  
  /* path[i][j] gives best way to state i at time (j + 2) from time (j + 1) */
  double *cum = (double *)malloc(statecnt * sizeof(double));
  int *viterbi = (int *)malloc(len * sizeof(int));
  int i = 0;
  int j = 0;
  double max_prob = 0;
  double prob;
  int time = 0;
  int max;
  char letter;
  printf("------------------\n");
  printf("- Viterbi Values -\n");
  printf("------------------\n%s\n\n", word);
  while (i < statecnt) {
    path[i] = (int *)malloc(len * sizeof(int));
    path[i][0] = 1;
    prob = cum[i] = model->pi[i];
    printf("Delta[1] of stateno %2d  %.4f\n", i, prob);
    i++;
  }
  i = 0;
  time = 1;
  while (time < len) {
    letter = word[time - 1];
    printf("Time t+1: %2d  %c\n", time, letter);
    while (i < statecnt) {
      printf("at state %d:\n", i);
      while (j < statecnt) {
        prob = cum[j] * trans_prob(i, j, letter, model);
        printf("  from-state %d: %f\n", j, prob);
        if (prob > max_prob) {
          max = j;
          max_prob = prob;
        }
        j++;
      }
      j = 0;
      printf("best state to come from is %d (at %f)\n\n", max, max_prob);
      cum[i] = max_prob;
      max_prob = 0;
      path[i][time - 1] = max;
      i++;
    }
    i = 0;
    time++;
  }
  printf("Path readout\n");
  while(i < statecnt) {
    if (cum[i] > max_prob) {
      max = i;
      max_prob = cum[i];
    }
    i++;
  }
  i = 0;
  while (time) {
    printf("Xhat:  %d at t+1 %d\n", max, time);
    max = path[max][time - 1];
    viterbi[time - 1] = max;
    time--;
  }
  printf("\nViterbi path:\ntime:  ");
  while (i < len) {
    printf("%2d  ", ++i);
  }
  i = 0;
  printf("\nstate: ");
  while (i < len) {
    printf("%2d  ", viterbi[i++]);
  }
  putchar('\n');
  return;
}
  
  

int main() {
  int i = 0;
  int wordcnt = 0;
  int wordmax = 1024;
  lettercnt = 0;
  char *word;
  char buf[1024];
  char **words = (char **)malloc(wordmax * sizeof(char *));
  letters = (char *)malloc(256);
  srand((unsigned int)words);
  statecnt = 2;
  states model;
  states temp;

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

    buf[strlen(buf) - 1] = '#';

    words[wordcnt++] = strdup(buf);

    while (buf[i] != '\0') {
      printf("buf = %s\n", buf+1);
      if (index_letter(buf[i]) < 0) {
	letters[lettercnt++] = buf[i];
      }
      buf[i++] = '\0';
    }
    i = 0;
  }

  if (DEBUG) {

    printf("words:\n");
    while (i < wordcnt) {
      printf("%20s ", words[i++]);
      if (!(i % 6)) {
        putchar('\n');
      }
    }
    i = 0;
    putchar('\n');
  }
  i = 0;

  /* Testing 

  model = make_states();

  process_word(*words, model);

  words_prob(words, model, wordcnt);

  print_soft(*words, model);

  putchar('\n');
  printf("===============================\n");
  printf("= Iterative Maximization Runs =\n");
  printf("===============================\n\n\n");

  free_states(iter_max(words, wordcnt, model, 20));
  model = make_states();  

  printf("===============================\n");
  printf("= Condition Maximization Runs =\n");
  printf("===============================\n\n\n");

  free_states(cond_max(words, wordcnt, model, 5));

  while (i < 20) {

    model = print_states(iter_max(words, wordcnt, make_states(), 20));

    printf("++++++++++++++++++++++++++++++++++++++++++++++++++\n");
    printf("+ Total Probability of All Strings:   %.7f  +\n", words_prob(words, model, wordcnt));
    printf("++++++++++++++++++++++++++++++++++++++++++++++++++\n\n");
    free_states(model);

    i++;
  }

  print_viterbi(words[1], make_states());

  model = make_states();

  while (i < 20) {

    temp = maximizer(words, wordcnt, model);
    free(model);
    model = temp;
    printf("%f %f %f\n", model->ptrs[0]->trns[1], model->ptrs[1]->trns[0], words_prob(words, model, wordcnt));
    i++;
  }

  End Testing */



  return 0;
}
