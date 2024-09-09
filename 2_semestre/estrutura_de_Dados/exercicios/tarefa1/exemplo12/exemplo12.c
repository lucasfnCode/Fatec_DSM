#include <stdio.h>
void troca(int a, int b) {
  int c = a;
  a = b;
  b = c;

  printf("x = %d, y = %d", a, b);
}

int main(int argc, char *argv[]) {
  int x = 5, y = 3;

  troca(x, y);

  return 0;
}
