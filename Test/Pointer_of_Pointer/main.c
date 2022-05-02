#include <stdio.h>
#include <stdlib.h>

static void test_multi_pointer_char(void);

int main(void)
{
    int nums1[3] = { 1, 2, 3 };
    int nums2[2] = { 4, 5 };
    int nums3[2] = { 6, 7 };

    int** p = malloc(sizeof(int*) * 3);

    *p = nums1;
    *(p + 1) = nums2;
    *(p + 2) = nums3;

    printf("%d\n", **p);
    printf("%d\n", **(p + 1));
    printf("%d\n", **(p + 2));

    test_multi_pointer_char();

    puts("No prob");
    return 0;
}

static void test_multi_pointer_char(void)
{
    char** a;

    a = malloc(sizeof(char*) * 3);

    printf("addr of a: 0x%p\n", (void*)a);
    printf("addr of a + 1: 0x%p\n", (void*)(a + 1));
    printf("addr differnet: %d\n", (char*)(a + 1) - (char*)a);

    free(a);
}
