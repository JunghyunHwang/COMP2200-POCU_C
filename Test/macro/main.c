#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

int main() {
  char str1[256];
  char str2[256];
  int n;
  size_t len1, len2;

  printf("Enter a sentence: ");
  scanf("%s", str1);

  printf("Enter another sentence: ");
  scanf("%s", str2);

  len1 = strlen(str1);
  len2 = strlen(str2);

  n = memcmp(str1, str2, len1 > len2 ? len1 : len2);

  if (n > 0) {
    printf("'%s' is greater than '%s'.\n", str1, str2);
  } else if (n < 0) {
    printf("'%s' is less than '%s'.\n", str1, str2);
  } else {
    printf("'%s' is the same as '%s'.\n", str1, str2);
  }
  return 0;
}
