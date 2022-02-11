#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

#define MAX_INPUT (256)

int main(void)
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

    printf("No prob\n");

    return 0;
}
