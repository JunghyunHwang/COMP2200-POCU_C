#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

#define MAX_INPUT (256)
#define MAX_STRING_LENGTH (4)

void test1(void)
{
    int num[20];
	int* data = num;
	FILE* stream;
	size_t i = 0;

	stream = fopen("input.txt", "r");

	while (1) {
		if (fscanf(stream, "%d", data++) == 0) {
			clearerr(stream);
			break;
		}

		++i;
	}

	printf("input numbers: ");
	for (i = 0; i < 20; ++i) {
		printf(" %d", num[i]);
	}

	fclose(stream);
}

void test2(void)
{
    char str[MAX_STRING_LENGTH + 1] = "POCU";
    printf("%s\n", str);
}

void test_string_format(void)
{
	printf("%x\n", -10);
}

int main(void)
{
    test_string_format();
    printf("No prob\n");

    return 0;
}
