#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define INIT_NUM (300)
#define COUNT (10)

static void test_memset(void);
static void test_memcmp(void);

int main(void)
{
    test_memcmp();
    puts("No prob");
    return 0;
}

static void test_memset(void)
{
    int* nums;
    size_t i;

    nums = malloc(sizeof(int) * COUNT);
    memset(nums, INIT_NUM, sizeof(int) * COUNT);

    for (i = 0; i < COUNT; ++i) {
        printf("%d ", nums[i]);
    }

    puts("");
}

static void test_memcmp(void)
{
    char name1[10] = "David";
    char name2[10] = "David";
    char* p_str1 = name1;
    char* p_str2 = name2;

    int result = memcmp(p_str1, p_str2, 5);
    printf("result: %d\n", result);
}
