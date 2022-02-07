#include <stdio.h>
#include <assert.h>
#include <string.h>
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

enum error_code int_filter_input(const char* input, int* filtered)
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
                *range_filtered = 92;
                break;
            case 'a':
                *range_filtered = 7;
                break;
            case 'b':
                *range_filtered = 8;
                break;
            case 'n':
                *range_filtered = 10;
                break;
            case 'f':
                *range_filtered = 12;
                break;
            case 'r':
                *range_filtered = 13;
                break;
            case 't':
                *range_filtered = 9;
                break;
            case 'v':
                *range_filtered = 11;
                break;
            case '\'':
                *range_filtered = 39;
                break;
            case '\"':
                *range_filtered = 34;
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

enum error_code filter_input(const char* input, char* filtered)
{
	const char* const p_start_input = input;
	char* p_start_filtered = filtered;
	char* p_end_filtered;

    char temp1[MAX_COUNT];
    char start_range[MAX_COUNT];
    char* temp_filtered = temp1;
    char* range_filtered = start_range;
    char* p_end_range_filtered;

    char start_char;
    char end_char;
    char escape_char;

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

            if (ESCAPE_CHAR_START <= end_char && end_char <= ESCAPE_CHAR_END) {

            } else if (end_char == '\'' || end_char == '\"' || end_char == '\\'){
                
            } else {
                return ERROR_CODE_INVALID_FORMAT;
            }
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
    	char* p_current = range_filtered + 1;

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

void set_delimiters(int* set1, int* set2, const char* input1, const char* input2)
{
    size_t i;
    size_t set2_last_char;
    int* p_start_set2 = set2;

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
}

int index_of(const int* set1, char ch)
{
    const int* p_start = set1;

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
    char ch;
    int index;
    int error_code;

    size_t set1_length;
    int set1[MAX_COUNT];
    int set2[MAX_COUNT];

    if (argc > 4) {
        return ERROR_CODE_WRONG_ARGUMENTS_NUMBER;
    }

    if (argc == 4) {
        /* set_delimiters(set1, set2, argv[2], argv[3]); */
    } else {
    	int_filter_input(argv[1], set1);
    	int_filter_input(argv[2], set2);
    }

    while ((ch = getchar()) != EOF) {
        if ((index = index_of(set1, ch)) != NONE) {
            ch = set2[index];
        }

        printf("%c", ch);
    }

    return TRUE;
}
