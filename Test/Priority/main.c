#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <float.h>

int main(void)
{
    int a;
    void* p;
    char ch = 127;

    a = 1;
    p = &a;
    p = (char*)p + 1;

    printf("%d\n", a);
    printf("0x%lX\n", &a);
    printf("0x%lX\n", p);
    printf("==================\n");

    printf("Size of char: %d\n", sizeof(char));
    printf("Size of short: %d\n", sizeof(short));
    printf("Size of int: %d\n", sizeof(int));
    printf("Size of long: %d\n", sizeof(long));
    printf("Size of float: %d\n", sizeof(float));
    printf("Size of double: %d\n", sizeof(double));
    printf("Size of double: %d\n", sizeof(long double));
    printf("Size of address: %d\n", sizeof(p));
    printf("==================\n");

    printf("Over flow! %+d\n", ch++);
    printf("Over flow! %+d\n", ch);

    return 0;
}
