#include <stdio.h>
#include <stdlib.h>

float media(float v[], int n) {
  float s = 0;
  for (int i = 0; i < n; i++) {
    s += v[i];
  }
  return s / n;
}

int main(int argc, char *argv[]) {
  int n;
  printf("Quantidade de números? ");
  scanf("%d", &n);
  float *v = malloc(n * sizeof(float));
  for (int i = 0; i < n; i++) {
    printf("%d o número? ", i + 1);
    scanf("%f", &v[i]);
  }
  printf("Media = %.2f\n", media(v, n));
  return 0;
}
