#include <stdio.h>
#include <string.h>

#include "static.h"

int main(void)
{
	/*
	int num = 0x123456;
	size_t i;

	i = 0;
	g_test = 20000;

	test_function(++i);
	printf("int num: %d\n", num);
	printf("Test extern: %d\n", g_test);
	*/

	print_static_data();

    return 0;
}
