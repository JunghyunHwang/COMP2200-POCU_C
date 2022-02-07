#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <ctype.h>
#include "translate.h"

#define NONE (-1)
#define MAX_COUNT (512)
#define ESCAPE_CHAR_START (7)
#define ESCAPE_CHAR_END (13)

/* TEST CASE

a-e, fgh => abcde, fghhh
a-ec, fgh => abdec, fghhh

포멧팅 하면서 포인터로 연산 할 때의 좋은 점을 발견 할 수 있었습니다.
두개의 다른 배열 중 한 배열에 값을 다른 배열에 옮길때 인덱스를 신경 않아도 됨

*/
/* TO DO
    512 error
*/

enum error_code test_filter_input(const char* input, int* filtered)
{
    const char* const p_start_input = input;
    int temp1[MAX_COUNT];
    int* temp_filtered = temp1;

    char start_char;
    char end_char;
    char escape_char;

    while (*input != '\0') {
        if (*input == '-' && input != p_start_input && *(input + 1) != '\0' && *(temp_filtered - 2) != '~' && *(temp_filtered - 1) != '~') {
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

            /* Add alphabet range*/
            while (start_char <= end_char) {
                *filtered = start_char;

                ++start_char;
                ++filtered;
            }

            ++input;
            ++temp_filtered;
        } else if (*input == '\\') {
            escape_char = *(input + 1);

            switch (escape_char) {
            case '\\':
                *filtered = '\\';
                break;
            case 'a':
                *filtered = '\a';
                break;
            case 'b':
                *filtered = '\b';
                break;
            case 'n':
                *filtered = '\n';
                break;
            case 'f':
                *filtered = '\f';
                break;
            case 'r':
                *filtered = '\r';
                break;
            case 't':
                *filtered = '\t';
                break;
            case 'v':
                *filtered = '\v';
                break;
            case '\'':
                *filtered = '\'';
                break;
            case '\"':
                *filtered = '\"';
                break;
            default:
                return ERROR_CODE_INVALID_FORMAT;
            }

            input += 2;
            ++filtered;
            continue;
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

enum error_code filter_input(const char* input, int* filtered)
{
	const char* const p_start_input = input;
	int* p_start_filtered = filtered;
	int* p_end_filtered;

    int temp1[MAX_COUNT];
    int start_range[MAX_COUNT];
    int* temp_filtered = temp1;
    int* range_filtered = start_range;
    int* p_end_range_filtered;

    char start_char;
    char end_char;
    char escape_char;

    while (*input != '\0') {
        if (*input == '-' && input != p_start_input && *(input + 1) != '\0' && *(temp_filtered - 2) != '~' && *(temp_filtered - 1) != '~') {
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

            /* Add alphabet range*/
            while (start_char <= end_char) {
            	*range_filtered = start_char;

            	++start_char;
            	++range_filtered;
            }

            ++input;
            ++temp_filtered;
        } else if (*input == '\\') {
            escape_char = *(input + 1);

            switch (escape_char) {
            case '\\':
                *range_filtered = '\\';
                break;
            case 'a':
                *range_filtered = '\a';
                break;
            case 'b':
                *range_filtered = '\b';
                break;
            case 'n':
                *range_filtered = '\n';
                break;
            case 'f':
                *range_filtered = '\f';
                break;
            case 'r':
                *range_filtered = '\r';
                break;
            case 't':
                *range_filtered = '\t';
                break;
            case 'v':
                *range_filtered = '\v';
                break;
            case '\'':
                *range_filtered = '\'';
                break;
            case '\"':
                *range_filtered = '\"';
                break;
            default:
                return ERROR_CODE_INVALID_FORMAT;
            }

            input += 2;
            ++range_filtered;
            continue;
        }

        *temp_filtered = *input;
        *range_filtered = *input;

        ++input;
        ++range_filtered;
        ++temp_filtered;
    }
    
    *range_filtered = '\0';
    p_end_range_filtered = range_filtered;
    --range_filtered;

    /* Remove duplicates */
    while (range_filtered >= start_range) {
    	char current_char = *range_filtered;
    	int* p_current = range_filtered + 1;

        while (p_current < p_end_range_filtered) {
            if (current_char == *p_current) {
            	break;
            }

            ++p_current;
        }

        if (p_current == p_end_range_filtered) {
            *filtered = current_char;
            ++filtered;
        }

        --range_filtered;
    }

    *filtered = '\0';
    p_end_filtered = filtered - 1;

    while (p_start_filtered < p_end_filtered) {
        *p_start_filtered ^= *p_end_filtered;
        *p_end_filtered ^= *p_start_filtered;
        *p_start_filtered ^= *p_end_filtered;

        ++p_start_filtered;
        --p_end_filtered;
    }

    return ERROR_CODE_NONE;
}

int index_of(const int* set1, char ch, int is_sensitive)
{
    const int* p_start = set1;
    int is_alpha = isalpha(ch);

    if (is_sensitive == TRUE || is_alpha == FALSE) {
        while (*set1 != '\0') {
            if (*set1 == ch) {
                return set1 - p_start;
            }

            ++set1;
        }
    } else {
        int mask = 1 << 5;
        ch |= mask;

        while (*set1 != '\0') {
            int current_char = mask | *set1;

            if (current_char == ch) {
                return set1 - p_start;
            }

            ++set1;
        }
    }

    return NONE;
}

int translate(int argc, const char** argv)
{
    char ch;
    int index;
    int error_code;
    int is_sensitive;
    int argv_index;
    int set1[MAX_COUNT];
    int set2[MAX_COUNT];
    int* p_set2_last;
    int set2_last_char_index;

    if (argc > 4) {
        return ERROR_CODE_WRONG_ARGUMENTS_NUMBER;
    }else if (argc == 4) {
        is_sensitive = FALSE;
        argv_index = 2;
    } else {
        is_sensitive = TRUE;
        argv_index = 1;
    }

    error_code = filter_input(argv[argv_index], set1);

    if (error_code != ERROR_CODE_NONE) {
        return error_code;
    }

    error_code = filter_input(argv[argv_index + 1], set2);

    if (error_code != ERROR_CODE_NONE) {
        return error_code;
    }

    p_set2_last = set2;

    while (*p_set2_last++ != '\0') {
    }

    --p_set2_last;
    set2_last_char_index = p_set2_last - set2 - 1;

    while ((ch = getchar()) != EOF) {
        if ((index = index_of(set1, ch, is_sensitive)) != NONE) {
            ch = index > set2_last_char_index ? set2[set2_last_char_index] : set2[index];
        }

        printf("%c", ch);
    }

    return ERROR_CODE_NONE;
}
