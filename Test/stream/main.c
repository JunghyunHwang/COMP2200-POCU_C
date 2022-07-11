#include <stdio.h>

int main(void)
{
    const char* input = "123abc456";
    char buffer[256];
    int a = 0;
    int b = 0;
    int c = 0;

    c = sscanf(input, "%d%s%d", &a, buffer, &b);
    
    printf("buffer: %s\n", buffer);
    printf("a: %d\n", a);
    printf("b: %d\n", b);
    printf("c: %d\n", c);

    return 0;
}
