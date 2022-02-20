#include <stdio.h>

void test_type_size(void)
{
    char* test1;
	int* test2;
	float f_num;
	double d_num;

	printf("Address: 0x%p, size:%d\n", (void*)&test1, sizeof(test1));
	printf("Address: 0x%p, size:%d\n", (void*)&test2, sizeof(test2));
	printf("Address: 0x%p, Floating point size: %d\n",(void*)&f_num, sizeof(f_num));
	printf("Address: 0x%p, double size: %d\n", (void*)&d_num, sizeof(d_num));
}

int main(void)
{
	test_type_size();

	return 0;
}
