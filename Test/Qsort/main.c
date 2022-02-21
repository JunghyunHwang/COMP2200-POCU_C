#include <stdio.h>
#include <stdlib.h>

int compare(const void* a, const void* b)
{
    int num1;
    int num2;

    num1 = *(int*)a;
    num2 = *(int*)b;

    return num2 - num1;
}

int main(void)
{
    int num[] = { 3, 2, 5, 6, 7, 1, 9, 4, 8, 100 };
    size_t i;

    qsort(num, sizeof(num) / sizeof(num[0]), sizeof(num[0]), compare);

    for (i = 0; i < 10; ++i) {
    	printf("%d\n", num[i]);
    }

    return 0;
}
