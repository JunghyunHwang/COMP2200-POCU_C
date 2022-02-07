#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "translate.h"

int main(int argc, const char* argv[])
{
    int filtered[512];
    /*
    char test1[512] = "a-c-f";
    char test2[512] = "a-ab";
    char test3[512] = "z-a";
    char test4[512] = "---b";
    char test5[512] = "abcdefg";
    char test6[512] = "abada";
    char test7[512] = "a-ec";

    assert(int_filter_input(test1, filtered) == ERROR_CODE_NONE);
    filtered[5] = 39;
    printf("%c%c%c%c%c%c\n", filtered[0], filtered[1], filtered[2], filtered[3], filtered[4], filtered[5]);
    printf("----------------\n");

    assert(int_filter_input(test2, filtered) == ERROR_CODE_NONE);
    printf("%c%c\n", filtered[0], filtered[1]);
    printf("----------------\n");

    assert(int_filter_input(test4, filtered) == ERROR_CODE_NONE);
    printf("%c%c\n", filtered[0], filtered[1]);
    printf("----------------\n");

    assert(int_filter_input(test5, filtered) == ERROR_CODE_NONE);
    printf("%c%c%c%c%c%c%c\n", filtered[0], filtered[1], filtered[2], filtered[3], filtered[4], filtered[5], filtered[6]);
    printf("----------------\n");

    assert(int_filter_input(test6, filtered) == ERROR_CODE_NONE);
    printf("%c%c%c\n", filtered[0], filtered[1], filtered[2]);
    printf("----------------\n");

    assert(int_filter_input(test7, filtered) == ERROR_CODE_NONE);
    printf("%c%c%c%c%c\n", filtered[0], filtered[1], filtered[2], filtered[3], filtered[4]);
    printf("----------------\n");
*/
    translate(argc, argv);

    return 0;
}
