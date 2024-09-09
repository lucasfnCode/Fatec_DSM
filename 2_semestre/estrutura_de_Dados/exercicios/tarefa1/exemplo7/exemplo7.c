#include <stdio.h>

int fat(int n) {
  int f = 1;
  for (int i = 2; i <= n; i++) {
    f *= i;
  }
  return f;
}

int main(int argc, char *argv[]) {
  printf("Fatorial do 5: %d\n", fat(5));
  return 0;
}
