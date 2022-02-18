#include <stdio.h>

int main(void)
{
	char* test1;
	int* test2;

	printf("Address: %lx, size:%d\n", &test1, sizeof(test1));
	printf("Address: %lx, size:%d\n", &test2, sizeof(test2));

	return 0;
}
