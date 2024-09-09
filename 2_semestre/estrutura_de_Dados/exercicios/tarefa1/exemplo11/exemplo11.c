#include <stdio.h>

int main(int argc, char *argv[]) {
  int v = 5;
  int *p;
  p = &v;
  *p = *p + 2;
  printf("v=%d, *p=%d\n", v, *p);
  return 0;
}
