#include <math.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
  float p, a, i;
  printf("Peso e altura? ");
  scanf("%f %f", &p, &a);
  i = p / (a * a);
  printf("IMC = %.2f\n", i);
  return 0;
}
