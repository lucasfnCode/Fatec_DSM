#include <stdio.h>

typedef struct {
  float x;
  float y;
} Ponto;

int main(int argc, char *argv[]) {
  Ponto p = {1.5, 2.5};
  printf("(%.1f, %.1f)\n", p.x, p.y);
  return 0;
}
