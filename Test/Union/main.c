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

int main(void)
{
	bit_t flag = { 0, };

	flag.bits.b5 = 1;

	printf("%d\n", flag.val);

	return 0;
}
