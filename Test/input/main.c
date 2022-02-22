#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <errno.h>

#define MAX_LENGTH (1024)
#define TRUE (1)

void print_array(int arr[])
{
    size_t i;

    printf("input value:");
    for (i = 0; i < MAX_LENGTH; ++i) {
        printf(" %d", arr[i]);
    }
    puts("");
}

void test_read_in_file(void)
{
    FILE* stream;
    char str[MAX_LENGTH];

    stream = fopen("input.txt", "r");

    if (stream == NULL) {
        perror("Fail to file open");
        goto file_close;
    }

    fread(str, sizeof(str), 1, stream);
    printf("Read: %s\n", str);

file_close:
    fclose(stream);
}

void test_write_in_file(void)
{
    FILE* stream;
    char str[] = "Bitch don't kill my vibe";
    
    stream = fopen("input.txt", "w");

    if (stream == NULL) {
        perror("Fail to open file");
        goto file_close;
    }

    fwrite(str, sizeof(str[0]), MAX_LENGTH, stream);
    fflush(stream);

file_close:
    fclose(stream);
}

int main(void)
{
    test_write_in_file();
    test_read_in_file();
    return 0;
}

