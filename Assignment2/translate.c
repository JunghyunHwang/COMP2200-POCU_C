#include <stdio.h>
#include <assert.h>
#include <string.h>
#include "translate.h"

#define NONE (-1)
#define MAX_COUNT (512)

/* TEST CASE

a-e, fgh => abcde, fghhh
a-ec, fgh => abdec, fghhh

포멧팅 하면서 포인터로 연산 할 때의 좋은 점을 발견 할 수 있었습니다.
두개의 다른 배열 중 한 배열에 값을 다른 배열에 옮길때 인덱스를 신경 않아도 됨

*/

enum error_code filter_input(const char* input, char* filtered)
{
	const char* p_start_input = input;
    char temp[MAX_COUNT];
    char* temp_filtered = temp;
    char start_char;
    char end_char;

    while (*input != '\0') {
        if (*input == '-' && input != p_start_input && input + 1 != '\0' && *(temp_filtered - 2) != '~' && *(temp_filtered - 1) != '~') {
            *temp_filtered = '~';

            start_char = *(input - 1);
            end_char = *(input + 1);

            if (end_char - start_char < 0) {
                return ERROR_CODE_INVALID_RANGE;
            } else if (end_char - start_char == 0) {
                ++input;
                ++temp_filtered;

		        *temp_filtered = *input;

		        ++input;
                ++temp_filtered;
                continue;
            }

            ++start_char;
            --end_char;

            while (start_char <= end_char) {
            	*filtered = start_char;

            	++start_char;
            	++filtered;
            }

            ++input;
            ++temp_filtered;
        }

        *temp_filtered = *input;
        *filtered = *input;

        ++input;
        ++filtered;
        ++temp_filtered;
    }
    
    *filtered = '\0';

    return ERROR_CODE_NONE;
}

void set_delimiters(char* set1, char* set2, const char* input1, const char* input2)
{
    size_t i;
    size_t set2_last_char;
    char filtered1[MAX_COUNT];
    char filtered2[MAX_COUNT];
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

int last_index_of(const char* set1, char ch)
{
    const char* p_start = set1;

    while (*set1 != '\0') {
        if (*set1 == ch) {
            return set1 - p_start;
        }

        ++set1;
    }

    return NONE;
}

int translate(int argc, const char** argv)
{
/*
    char ch;
    int index;
    int error_code;
*/
    size_t set1_length;
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
    while ((ch = getchar()) != EOF) {
        if ((index = last_index_of(set1, ch)) != NONE) {
            ch = set2[index];
        }

        printf("%c", ch);
    }
*/
    return TRUE;
}
