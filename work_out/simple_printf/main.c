#include <stdio.h>
#include <assert.h>
#include "simpleio.h"

int main(void)
{
    int num1 = 256;
    char str[] = "Bitch don't kill my vibe";
    char ch = 'S';

    print_simple("His, d\n", str, num1);
    print_simple("His, c\n", str, ch);

    puts("No prob");
    return 0;
}
