#include <stdio.h>

//
int main(void) {
  for (int i = 0; i <= 5; i++) {
    printf("\n");
    for (int j = i; j >= 0; j--) {
      printf("*");
    }
  }
  printf("\n");
  return 0;
}
