#include <stdio.h>
#include <assert.h>
#include "translate.h"

int main(int argc, const char* argv[])
{
    char test1[512] = "a-c-f";
    char test2[512] = "a-ab";
    char test3[512] = "z-a";
    char test4[512] = "---b";
    char test5[512] = "abcdefg";
    char filtered[512];

    assert(filter_input(test1, filtered) == ERROR_CODE_NONE);
    printf("%s\n", filtered);
    printf("----------------\n");

    assert(filter_input(test2, filtered) == ERROR_CODE_NONE);
    printf("%s\n", filtered);
    printf("----------------\n");

    assert(filter_input(test3, filtered) == ERROR_CODE_INVALID_RANGE);
    printf("%s\n", filtered);
    printf("----------------\n");

    assert(filter_input(test4, filtered) == ERROR_CODE_NONE);
    printf("%s\n", filtered);
    printf("----------------\n");

    assert(filter_input(test5, filtered) == ERROR_CODE_NONE);
    printf("%s\n", filtered);
    printf("----------------\n");
    /*translate(argc, argv); */

    return 0;
}
