#include <stdio.h>

int main(int argc, char *argv[]) {
  int n, f;
  printf("Numero? ");
  scanf("%d", &n);
  f = 1;
  for (int i = 2; i <= n; i++) {
    f *= i;
  }
  printf("Fatorial: %d\n", f);

  return 0;
}
