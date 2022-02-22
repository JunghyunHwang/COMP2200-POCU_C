#include <stdio.h>
#include "static.h"

#define LENGTH (6)

static const char* S_DATA[LENGTH] = {
	"Byte", "Kilobyte", "Megabyte", "Gigabyte", "Terabyte", "Petabyte"
};

void test_function(int a)
{
	printf("Input number: %d\n", a);
}

void print_static_data(void)
{
	size_t i = 0;
	const char** p;

	p = S_DATA;
	/*
	for (i = 0; i < LENGTH; ++i) {
		printf("%s\n", S_DATA[i]);
	}
	*/

	while (i < LENGTH) {
		printf("%s\n", *p++);
		++i;
	}
}
