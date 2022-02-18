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
    int arr[2][2] = {
    	{ 1, 2 },
    	{ 3, 4 }
    };

    matrix(arr);
}

int main(void)
{
    multidementional_array();
	return 0;
}
