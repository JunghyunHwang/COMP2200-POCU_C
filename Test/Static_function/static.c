#include <stdio.h>
#include "static.h"

int g_test;
static int s_test;

void test_function(int a)
{
	printf("Input number: %d\n", a);
}
