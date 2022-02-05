#include <stdio.h>
#include <assert.h>
#include <string.h>
#include "translate.h"

#define NONE (-1)
#define MAX_COUNT (512)

/* TEST CASE

a-e, fgh => abcde, fghhh
a--e, fgh => abcde, fghhh
a-ec, fgh => abdec, fghhh

*/

void filter_range_input(char* filtered, const char* input)
{
    while (*input != '\0') {
        if (*input == '-') {

        }
    }
}

void set_delimiters(char* set1, char* set2, const char* input1, const char* input2)
{
    size_t i;
    size_t set2_last_char;
    char* filtered_input1;
    char* filtered_input2;
    char* p_start_set2 = set2;

    set2_last_char = strlen(input2) - 1;

    for (i = 0; *input1 != '\0'; ++i) {
        *set1 = *input1;

        if (i > set2_last_char) {
	        *set2 = *(p_start_set2 + set2_last_char);
        } else {
            *set2 = *input2;
            ++input2;
        }

        ++input1;
        ++set1;
        ++set2;
    }

    *set1 = '\0';
    *set2 = '\0';

    assert(strlen(set1) == strlen(set2));
}

int index_of(const char* set1, char c)
{
    const char* p_start = set1;

    while (*set1 != '\0') {
        if (c == *set1) {
            return set1 - p_start;
        }

        ++set1;
    }

    return NONE;
}

int translate(int argc, const char** argv)
{
/*
    char c;
    int index;
*/
    char set1[MAX_COUNT];
    char set2[MAX_COUNT];

    if (argc > 4) {
        return ERROR_CODE_WRONG_ARGUMENTS_NUMBER;
    }

    if (argc == 4) {
        /* set_delimiters(set1, set2, argv[2], argv[3]); */
    } else {
        set_delimiters(set1, set2, argv[1], argv[2]);
    }

    printf("SET1: %s\n", set1);
    printf("SET2: %s\n", set2);
/*
    while ((c = getchar()) != EOF) {
        if ((index = index_of(set1, c)) != NONE) {
            c = set2[index];
        }

        printf("%c", c);
    }
*/
    return TRUE;
}
