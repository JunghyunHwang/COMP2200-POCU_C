#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

#define TRUE (1)
#define FALSE (0)
#define MAX_INPUT (256)
#define MAX_STRING_LENGTH (4)

void test1(void)
{
    int num[7];
	int* data = num;
    char line[MAX_INPUT];
	FILE* stream;
	size_t i;

	stream = fopen("input.txt", "r");

	if (stream == NULL) {
		perror("Fail to file open");
		fclose(stream);
		return;
	}

	i = 0;

	while (i <= 7) {
		if (fgets(line, MAX_INPUT, stream) == NULL) {
			clearerr(stream);
			break;
		}

		sscanf(line, "%d", data++);
		++i;
	}

	printf("input numbers:");
	for (i = 0; i < 7; ++i) {
		printf(" %d", num[i]);
	}
	puts("");

	fclose(stream);
}

void test_strncpy(void)
{
    char src[] = "POCU";
    char dest[2];
    size_t i;
    size_t dest_length;

    strncpy(dest, src, 3);

    printf("src length: %d\n", strlen(src));
    printf("dest length: %d\n", dest_length = strlen(dest));
    printf("%s\n", dest);

    printf("result:");
    for (i = 0; i < dest_length + 1; ++i) {
        printf(" %d", dest[i]);
    }
}

void test_sprintf(void)
{
    char str[] = "POCU is fun";
    char line[5];
    int return_value;

    return_value = sprintf(line, "%.5s", str);
    printf("String: %sg\n", line);
    printf("return value: %d\n", return_value);
}

int main(void)
{
    test_strncpy();

    return 0;
}
