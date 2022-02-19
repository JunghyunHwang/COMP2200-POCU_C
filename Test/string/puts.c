#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

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
	printf("%5.7s\n", "Hi");
}

void test_strncpy(void)
{
    char src[] = "draw_alarm is goood ";
    char dest[21];
    size_t i;

    strncpy(dest, src, 4);

    printf("result:");
    for (i = 0; i < 21; ++i) {
        printf(" %d", dest[i]);
    }

    printf("\n%s", dest);
    puts("E");
}

int main(void)
{
    test_string_format();
    printf("No prob\n");

    return 0;
}
