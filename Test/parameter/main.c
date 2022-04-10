#include <stdio.h>

static void add(int a, int b, int c, int d, int e, int f, int g);

int main(void)
{
    int a = 1;
    register double wi = 2.14;
    double* p_wi = &wi;

    add(1, 2, 3, 4, 5, 6 ,7);
    
    printf("%d\n", a);
    printf("%f\n", wi);

    puts("No prob");
    return 0;
}

static void add(int a, int b, int c, int d, int e, int f, int g)
{
    printf("a address%p\n", (void*)&a);
    printf("b address%p\n", (void*)&b);
    printf("c address%p\n", (void*)&c);
    printf("d address%p\n", (void*)&d);
    printf("e address%p\n", (void*)&e);
    printf("e address%p\n", (void*)&f);
    printf("e address%p\n", (void*)&g);
}
