#include <stdio.h>

void test_sample(void);
void test_eof(void);

int main(void)
{
	test_eof();

	puts("No prob");
	return 0;
}

void test_sample(void)
{
	const int MIN_ASCII = 32;
	const int MAX_ASCII = 126;
	const int NUM_CHARS = MAX_ASCII - MIN_ASCII + 1;

	const int NUM_COLS = 3;
	const int NUM_ROWS = (NUM_CHARS + NUM_COLS - 1) / NUM_COLS;

	int r;
	int ch;

	printf("Dec Hex  Char\tDec Hex  Char\tDec Hex  Char\n");

	for (r = 0; r < NUM_ROWS - 1; ++r) {
		ch = MIN_ASCII + r;
		printf("%3d %#X %c\t", ch, ch, ch);

		ch += NUM_ROWS;
		printf("%3d %#X %c\t", ch, ch, ch);

		ch += NUM_ROWS;
		printf("%3d %#X %c\t", ch, ch, ch);
	}
}

void test_eof(void)
{
	char c1;
    char c2;
    char c3;

    c1 = getchar();
    c2 = getchar();

    if (c1 == -1) {
    	c3 = 'N';
    } else {
    	c3 = 'P';
    }

    printf("%d, ", c1);
    printf("%d, ", c2);
    printf("%d, ", c3);
    puts("");

    puts("End");
}
