#include <stdio.h>

#define TEST "&*()"

int main(void)
{
    printf("test is variable: %c\n", TEST[0]);

    return 0;
}
