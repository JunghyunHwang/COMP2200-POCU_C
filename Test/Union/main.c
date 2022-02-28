#include <stdio.h>

typedef union {
	unsigned char val;
	struct {
		unsigned char b0 : 1;
		unsigned char b1 : 1;
		unsigned char b2 : 1;
		unsigned char b3 : 1;
		unsigned char b4 : 1;
		unsigned char b5 : 1;
		unsigned char b6 : 1;
		unsigned char b7 : 1;
	} bits;
} bit_t;

typedef union {
	unsigned int val;
	struct {
		unsigned char r;
		unsigned char g;
		unsigned char b;
		unsigned char a;
	} rgba;
} color_t;

typedef union {
	int lvalue;
	short rvalue[2];
} divide_t;

typedef union {
	char  c[5];
	float f;
} ped_t;

void test_bit_flag(void)
{
	bit_t flag;

	flag.val = 0x0;
	flag.bits.b4 = 1;

	printf("Hex: %08x, Dec: %d\n", flag.val, flag.val);
}

void test_rgba(void)
{
	color_t black;
	black.val = 0x0;
	black.rgba.a = 0xff;

	printf("Black: 0x%08x (%d, %d, %d, %d)\n", black.val, black.rgba.r, black.rgba.g, black.rgba.b, black.rgba.a);
	printf("Black size %d\n", sizeof(black));
	printf("Color black address: %7s%p\n", "", (void*)&black);
	printf("Color black.val address: %3s%p\n", "", (void*)&black.val);
	printf("Color black.rgba.r address: %p, value: %d\n", (void*)&black.rgba.r, black.rgba.r);
	printf("Color black.rgba.g address: %p, value: %d\n", (void*)&black.rgba.g, black.rgba.g);
	printf("Color black.rgba.b address: %p, value: %d\n", (void*)&black.rgba.b, black.rgba.b);
	printf("Color black.rgba.a address: %p, value: %d\n", (void*)&black.rgba.a, black.rgba.a);
}

void test_divide_union(void)
{
	divide_t test;

	test.lvalue = 0x0;
	test.rvalue[0] = 10;

	printf("divide size: %d\n", sizeof(divide_t));
	printf("int address: %p, int value: %d\n", (void*)test.lvalue, test.lvalue);
	printf("short address: %p\n", (void*)test.rvalue);
}

int main(void)
{
	/*
	test_bit_flag();
	test_rgba();
	test_divide_union();
	*/

	int test[2][3] = {
		{ 1, 2, 3 },
		{ 4, 5, 6 }
	};

	printf("%d\n", &test[1][1] - &test[0][1]);
	printf("%05d", 5);

	return 0;
}
