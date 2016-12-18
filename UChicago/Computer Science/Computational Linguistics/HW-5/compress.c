#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <float.h>

#define VERBOSEFLAG 0
#define DEBUG 0

/* Globals */

/* print "<word> <probability> <forward_start> <forward_end> <backward_start> <backward_end>\n" */
void intervals(double *unigram, double *cum, char *word) {
  double mul = 1.0;
  double start = 0.0;
  int i = 0;
  while (word[i]) {
    start += mul * cum[word[i]-1];
    mul *= unigram[word[i]];
    i++;
  }
  printf("%20s,%.20f,%.20f,%.20f,", word, mul, start, start + mul);
  mul = 1.0;
  start = 0.0;
  while (i--) {
    start += mul * cum[word[i]-1];
    mul *= unigram[word[i]];
  }
  printf("%.20f,%.20f\n", start, start + mul);
  return;
}	

int main() {
  int i;
  int wordcnt = 0;
  int wordmax = 1024;
  int lettercnt = 0;
  char buf[1024];
  char **words = (char **)malloc(wordmax * sizeof(char *));
  int letters[256];
  double *unigram = (double *)malloc(256 * sizeof(double));
  double *cum = (double *)malloc(256 * sizeof(double));
  double cnt;
  char *str;
  int freq;

  for (i = 0; i < 1024; i++) {
    buf[i] = '\0';
  }

  for (i = 0; i < 256; i++) {
    letters[i] = 0;
    unigram[i] = 0.0;
    cum[i] = 0.0;
  }

  if (DEBUG) {
    printf("Reading in...\n");
  }

  while (fgets(buf, 1024, stdin)) {

    if (wordcnt == wordmax) {
      wordmax <<= 2;
      words = realloc(words, wordmax * sizeof(char *));
    }

    str = strtok(buf, " "); /* read word */
    freq = atoi(strtok(NULL, " "));
    str[strlen(str) + 1] = '\0';
    str[strlen(str)] = '#';
    if (DEBUG) {
      printf("words[%3d] = %s\n", wordcnt, str);
    }
    words[wordcnt++] = strdup(str);

    for (i = 0; str[i]; i++) {
      letters[str[i]] += freq;
      lettercnt += freq;
    }
  }

  cnt = (double)lettercnt;

  for (i = 0; i < 256; i++) {
    unigram[i] = (((double)letters[i]) / cnt);
    if (i) {
      cum[i] = cum[i - 1] + unigram[i];
    }
    if (DEBUG) {
      printf("i = %3d, unigram = %.7f, cum = %.7f\n", i, unigram[i], cum[i]);
    }
  }

  printf("%20s,%22s,%22s,%22s,%22s,%22s\n", "key","probability", "forward_start", "forward_end", "backward_start", "backward_end");
  
  for (i = 0; i < wordcnt; i++) {
    intervals(unigram, cum, words[i]);
  }
  
  return 0;
}
  

