#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>

int is_vowel(char c) {
  switch(c) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      return 1;
    default:
      return 0;
  }
  return 0;
}

int c_cost(char c1, char c2) {
  if (c1 == c2) {
    return 0;
  }
  int v1 = is_vowel(c1);
  int v2 = is_vowel(c2);
  if (v1 == v2) {
    if (v1) {
      return 5;
    } else {
      return 6;
    }
  }
  return 12;
}

int min(int fr, int se, int th) {
  if (fr > se) {
    fr = se;
  }
  if (fr > th) {
    return th;
  }
  return fr;
}

int **cost_arr(char *s1, char *s2, int l1, int l2) {
  l1++;
  l2++;
  int **costs = (int **)malloc((l1+1) * sizeof(int *));
  int i;
  int j;
  for ( i = 0; i < l1+1; i++ ) {
    costs[i] = (int *)malloc((l2+1) * sizeof(int));
    costs[i][l2 - 1] = 20 * (l1 - i - 1);
    costs[i][l2] = INT_MAX;
  }
  for ( j = 0; j < l2+1; j++ ) {
    costs[l1 - 1][j] = 20 * (l2 - j - 1);
    costs[l1][j] = INT_MAX;
  }
  costs[l1 - 1][l2] = INT_MAX;
  for (i = l1 - 2; i >= 0; i--) {
    for (j = l2 - 2; j >= 0; j--) {
      costs[i][j] = min(c_cost(s1[i], s2[j]) + costs[i+1][j+1], 20 + costs[i+1][j], 20 + costs[i][j+1]);
    }
  }
  return costs;
}

void print_arr(int **arr, char *s1, char *s2, int l1, int l2) {
  int i;
  int j;
  printf("     ");
  for (i = 0; i < l1; i++) {
    printf("%6c", s1[i]);
  }
  putchar('\n');
  for (j = 0; j < l2; j++) {
    printf("%6c", s2[j]);
    for (i = 0; i < l1; i++) {
      printf("%3d.%d ", arr[i][j] / 10, arr[i][j] % 10);
    }
    putchar('\n');
  }
  printf("\n\n");
  return;
}

void printer(char *s1, char *s2) {
  int i = 0;
  int j = 0;
  int diag;
  int down;
  int over;
  int mnmn;
  int cost;
  printf("\n\nCalculating String Edit Distance \"%s\" to \"%s\": ", s1, s2);
  int **costs = cost_arr(s1, s2, strlen(s1), strlen(s2));
  printf("Total Cost = %d.%d\n\n", **costs / 10, **costs % 10);
  //print_arr(costs, s1, s2, strlen(s1), strlen(s2));
  while (s1[i] && s2[j]) {
    cost = c_cost(s1[i], s2[j]);
    diag = cost + costs[i+1][j+1];
    down = 20 + costs[i][j+1];
    over = 20 + costs[i+1][j];
    mnmn = min(diag, down, over);
    //printf("%d, %d, %d, %d, %d, %d\n", i, j, diag, down, over, mnmn);
    if (mnmn == diag) {
      printf("  Substitute '%c' at position [%2d] in \"%s\" for '%c' at position [%2d] in \"%s\" with cost %d.%d\n", 
	s1[i++], i, s1, s2[j++], j, s2, cost / 10, cost % 10);
    } else {
      if (mnmn = down) {
        printf("  Insert '%c' at position [%2d] in \"%s\" with cost 2\n", s1[i++], i, s1);
      } else {
        printf("  Insert '%c' at position [%2d] in \"%s\" with cost 2\n", s2[j++], j, s2);
      }
    }
  }
  while (s1[i]) {
    printf("  Insert '%c' at position [%2d] in \"%s\" with cost 2\n", s1[i++], i, s1);
  }
  while (s2[j]) {
    printf("  Insert '%c' at position [%2d] in \"%s\" with cost 2\n", s2[j++], j, s2);
  }
  printf("\n\n");
  return;
}
  

int main ( int argc, char *argv[] ) {
  if ( argc != 3 ) { /* argc should be 3 for correct execution */
    /* We print argv[0] assuming it is the program name */
    printf( "usage: %s <string1> <string2>\n", argv[0] );
    exit(1);
  }
  printer(argv[1], argv[2]);
  return 0;
}
  
