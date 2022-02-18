#include <stdio.h>

void test1(void)
{
    int a;
    int* p;
    int** p_p;

    p = &a;
    p_p = &p;

    printf("p: %p \n", (void*)p);
    printf("p value: %d \n", *p);
    printf("p_p: %p \n", (void*)p_p);
}

void test2(void)
{
	int a;
	int* p;

	a = 97;
	p = &a;
	*p += 1;

	printf("%c\n", (char*)*p);
}

void cast_point(void)
{
    int a[2] = { 1, 2 };
    int* p;
    size_t i;

    p = a;

    for (i = 0; i < 4; ++i) {
    	printf("%d try value: %d\n", i + 1, *p);
    	printf("Address: %p\n", (void*)p);
    	p = (char*)p + 1;
    }

    printf("result: %d\n", *p);
	printf("Address: %p\n", (void*)p);
}

int main(void)
{
    cast_point();

    return 0;
}
