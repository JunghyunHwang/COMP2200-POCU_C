#include <stdio.h>
#include <string.h>

int main(void)
{
    const char str[] = "POCU";
    const char* p = str;
    
    p += 3;

    printf("%s\n", p); /* COCU */

    return 0;
}
