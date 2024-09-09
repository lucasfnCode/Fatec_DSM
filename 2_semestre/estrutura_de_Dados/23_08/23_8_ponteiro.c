#include <stdio.h>

void troca(int *a, int *b) {

  int c = *a;
  *a = *b;
  *b = c;
}

int main(void) {

  int x, y;
  printf("digite o valor de X \n");
  scanf("%d", &x);
  printf("digite o valor Y \n");
  scanf("%d", &y);
  printf("%d %d \n", x, y);
  troca(&x, &y);
  printf("%d %d \n", x, y);
}
