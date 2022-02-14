#include <stdio.h>

#define MAX_LENGTH (10)
#define TRUE (1)

int main(int argc, char* argv[])
{
    FILE* stream;
    char char_input[MAX_LENGTH];
    int int_input[MAX_LENGTH];
    int* p_input;
    size_t return_value;

    p_input = int_input;

    printf("File path: %s\n", argv[0]);
    printf("argc: %d\n", argc);

    stream = fopen("input.txt", "r");

    return_value = fread(int_input, sizeof(int_input[0]), MAX_LENGTH, stream);

    printf("Return value: %d\n", return_value);

    printf("input value:");
    while (p_input - int_input < MAX_LENGTH) {
        printf(" %d", *p_input);
        ++p_input;
    }
    puts("");

    fclose(stream);

    return 0;
}

