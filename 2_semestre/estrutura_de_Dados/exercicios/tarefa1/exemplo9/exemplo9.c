#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
  char s[256];
  printf("Senha? ");
  gets(s);
  if (strcmp(s, "abracadabra") == 0) {
    puts("Ok!");
  } else {
    puts("Senha invalida!");
  }
  return 0;
}
