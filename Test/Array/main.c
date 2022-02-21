#include <stdio.h>

#define MAX_LEN (3)

void add_all_elements(int arr[])
{
	size_t i;

	for (i = 0; i < MAX_LEN; ++i) {
		++arr[i];
	}
}

void test_reference_copy(void)
{
    int a[MAX_LEN] = { 1, 2, 3 };
	size_t i;

	printf("Before:");
	for (i = 0; i < MAX_LEN; ++i) {
		printf(" %d", a[i]);
	}
	puts("");

	add_all_elements(a);

	printf("After:");
	for (i = 0; i < MAX_LEN; ++i) {
		printf(" %d", a[i]);
	}
	puts("");
}

void matrix(int arr[][2])
{
    size_t i;
    size_t j;

    for (i = 0; i < 2; ++i) {
    	for (j = 0; j < 2; ++j) {
    		printf("%d\n", arr[i][j]);
    	}
    }
}

void multidementional_array(void)
{
    int arr[][2] = {
    	{ 1, 2 },
    	{ 3, 4 }
    };

    matrix(arr);
}

void check_address_in_array(void)
{
	int nums[3][5] = {
		{ 1, 2, 3, 4, 5 },
		{ 6, 7, 8, 9, 10 },
		{ 11, 12, 13, 14, 15 }
	};

	char strs[3][4] = {
		{ ' ', 'O', 'n', '\0'},
		{ 'T', 'h', 'e', '\0'},
		{ 'T', 'o', 'p', '\0'},
	};

	printf("Address nums[0]: %p\n", (void*)&nums[0]);
	printf("Address nums[1]: %p\n", (void*)&nums[1]);
	printf("Address nums[2]: %p\n", (void*)&nums[2]);
	printf("nums[2] offset from nums[0]: %d\n", nums[2] - nums[0]);

	printf("Address strs[0]: %p\n", (void*)&strs[0]);
	printf("Address strs[1]: %p\n", (void*)&strs[1]);
	printf("Address strs[2]: %p\n", (void*)&strs[2]);
	printf("strs[2] offset from strs[0]: %d\n", strs[2] - strs[0]);
}

void check_offset(void)
{
	int nums[5] = { 1, 2, 3, 4, 5 };
	int* p_num = nums + 4;

	printf("offset: %d\n", p_num - nums);
}

int main(void)
{
    check_offset();
	return 0;
}
