#include <stdio.h>

int add(int a, int b)
{
	printf("Add!!\n");
	return a + b;
}

int sub(int a, int b)
{
	printf("Sub!!\n");
	return a - b;
}

int main(void)
{
    int a;
    int b;

    a = 1; 
    b = 1;

    printf("%d %d", add(a, b), sub(a, b));

    return 0;
}
