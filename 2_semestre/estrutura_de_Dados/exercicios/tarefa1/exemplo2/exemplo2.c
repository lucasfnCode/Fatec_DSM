#include <math.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
  float p, a, i;
  printf("Peso e altura? ");
  scanf("%f %f", &p, &a);
  i = p / (a * a);
  printf("IMC = %.2f\n", i);

  if (i < 18.5) {
    puts("Magra");
  } else if (i > 30) {
    puts("Obesa");
  } else {
    puts("Normal");
  }

  return 0;
}
