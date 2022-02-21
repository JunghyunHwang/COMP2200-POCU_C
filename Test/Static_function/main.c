#include <stdio.h>
#include <string.h>

#include "static.h"

extern int g_test;
extern int s_test;

int main(void)
{
	int num = 0x123456;
	size_t i;

	i = 0;
	g_test = 20000;

	test_function(++i);
	printf("int num: %d\n", num);
	printf("Test extern: %d\n", g_test);

    return 0;
}
