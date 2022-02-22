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

void test_bit_flag(void)
{
	bit_t flag;

	flag.val = 0x0;
	flag.bits.b0 = 1;

	printf("Hex: 0x%08x Dec: %d\n", flag.val, flag.val);
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
	printf("Color black.rgba.r address: %p\n", (void*)&black.rgba.r);
	printf("Color black.rgba.g address: %p\n", (void*)&black.rgba.g);
	printf("Color black.rgba.b address: %p\n", (void*)&black.rgba.b);
	printf("Color black.rgba.a address: %p\n", (void*)&black.rgba.a);
}

int main(void)
{
	/*
	test_bit_flag();
	*/
	test_rgba();

	return 0;
}
