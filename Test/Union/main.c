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
	flag.bits.b1 = 1;

	printf("%d\n", flag.val);
}

void test_rgba(void)
{
	color_t transe_black;
	color_t black;
	color_t red;
	color_t yellow;

	transe_black.val = 0x0;
	black.val = 0x0;
	black.rgba.a = 0xff;

	red.val = 0x0;
	red.rgba.r = 255;
	red.rgba.a = 255;

	yellow = red;
	yellow.rgba.g = 255;

	printf("Transe black: 0x%08x (%d %d %d %d)\n", transe_black.val, transe_black.rgba.r, transe_black.rgba.g, transe_black.rgba.b, transe_black.rgba.a);
	printf("Red: 0x%08x (%d %d %d %d)\n", red.val, red.rgba.r, red.rgba.g, red.rgba.b, red.rgba.a);
	printf("yellow: 0x%08x (%d %d %d %d)\n", yellow.val, yellow.rgba.r, yellow.rgba.g, yellow.rgba.b, yellow.rgba.a);

	puts("");

	printf("Black: 0x%08x (%d %d %d %d)\n", black.val, black.rgba.r, black.rgba.g, black.rgba.b, black.rgba.a);
	printf("Color black address: %p\n", (void*)&black);
	printf("Color black.val address: %p\n", (void*)&black.val);
	printf("Color black.rgba.r address: %p\n", (void*)&black.rgba.r);
}

int main(void)
{
	/*
	test_bit_flag();
	*/
	test_rgba();

	return 0;
}
