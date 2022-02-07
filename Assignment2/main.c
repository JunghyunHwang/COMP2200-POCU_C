#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "translate.h"

void print_filtered(int* input)
{
    printf("filtered: ");

    while (*input != '\0') {
        printf("%c", *input);
        ++input;
    }

    printf("\n");
}

void test_case(void)
{
    int filtered[512];
    int error_code;
    char test1[512] = "a-c-f";
    char test2[512] = "a-ab";
    char test3[512] = "a-b-\\-a";
    char test4[512] = "---b";
    char test5[512] = "abcdefg";
    char test6[512] = "abada";
    char test7[512] = "a-ec";

    error_code = filter_input(test1, filtered);
    printf("ERROR_CODE: %d\n", error_code);
    assert(error_code == ERROR_CODE_NONE);
    print_filtered(filtered);

    error_code = filter_input(test2, filtered);
    printf("ERROR_CODE: %d\n", error_code);
    assert(error_code == ERROR_CODE_NONE);
    print_filtered(filtered);

    error_code = filter_input(test3, filtered);
    printf("ERROR_CODE: %d\n", error_code);
    assert(error_code == ERROR_CODE_NONE);
    print_filtered(filtered);

    error_code = filter_input(test4, filtered);
    printf("ERROR_CODE: %d\n", error_code);
    assert(error_code == ERROR_CODE_NONE);
    print_filtered(filtered);

    error_code = filter_input(test5, filtered);
    printf("ERROR_CODE: %d\n", error_code);
    assert(error_code == ERROR_CODE_NONE);
    print_filtered(filtered);

    error_code = filter_input(test6, filtered);
    printf("ERROR_CODE: %d\n", error_code);
    assert(error_code == ERROR_CODE_NONE);
    print_filtered(filtered);

    error_code = filter_input(test7, filtered);
    printf("ERROR_CODE: %d\n", error_code);
    assert(error_code == ERROR_CODE_NONE);
    print_filtered(filtered);
}

void check_filter(const char** argv)
{
    int filtered[512];
    int* p_start = filtered;
    int error_code;

    error_code = test_filter_input(argv[1], filtered);
    assert(error_code == ERROR_CODE_NONE);

    printf("filtered:");
    while (*p_start != '\0') {
        printf(" %c", *p_start);
        ++p_start;
    }
    printf("\n");
}

int main(int argc, const char* argv[])
{
    check_filter(argv);

    /*
    test_case();
    translate(argc, argv);
    */
    
    return 0;
}
