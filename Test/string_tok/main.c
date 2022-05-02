#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

int main(void)
{
    char str[] = "Bitch don't kill my vibe";
    char* p;

    p = strtok(str, " ");

    printf("addr of str: %p\n", (void*)str);
    printf("addr of p: %p\n", (void*)p);

    puts("No prob");

    return 0;
}
