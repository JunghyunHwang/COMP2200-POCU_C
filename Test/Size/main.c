#include <stdio.h>

typedef struct {
	unsigned char ch;
	unsigned int num;
	char str[64];
} padding_t;

void test_type_size(void)
{
    char* test1;
	int* test2;
	char ch;
	int num;
	long l_num;
	float f_num;
	double d_num;

	printf("Address: 0x%p, char pointer size:%d\n", (void*)&test1, sizeof(test1));
	printf("Address: 0x%p, int pointer size:%d\n", (void*)&test2, sizeof(test2));

	printf("Address: 0x%p, char size: %d\n", (void*)&ch, sizeof(ch));
	printf("Address: 0x%p, int size: %d\n", (void*)&num, sizeof(num));
	printf("Address: 0x%p, long size: %d\n", (void*)&l_num, sizeof(l_num));
	printf("Address: 0x%p, Floating point size: %d\n",(void*)&f_num, sizeof(f_num));
	printf("Address: 0x%p, double size: %d\n", (void*)&d_num, sizeof(d_num));
}

void test_array_size(void)
{
	double d_nums[2][3] = {
		{ 3.14, 2.18, 18.1},
		{ 19.8, 36.5, 67.7}
	};
	int** ary[3];
	

	printf("0x%p\n", (void*)&d_nums[0]);
	printf("0x%p\n", (void*)&d_nums[1]);
	printf("Distance %d\n", d_nums[1] - d_nums[0]); /* 3 */
	printf("%f\n", **d_nums);
}

int main(void)
{
	/*
	test_type_size();
	*/
	
	test_array_size();
	printf("%d\n", sizeof(padding_t));

	return 0;
}
