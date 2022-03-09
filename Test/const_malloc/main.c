#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void test_int_malloc(void)
{
    int* nums;
    int* test;
    size_t nums_count = 0;
    size_t i;

    nums = NULL;

    for (i = 0; i < 3; ++i) {
        nums = realloc(nums, (nums_count + 1) * sizeof(int));
        nums[i] = i + 1;

        ++nums_count;
    }

    test = nums + 1;
    printf("%d\n", *test);
    printf("%p\n", (void*)test);

    test = NULL;
    printf("%d\n", *test);
    printf("%p\n", (void*)test);

	free(nums);
}

int main(void)
{
	test_int_malloc();

	return 0;
}
