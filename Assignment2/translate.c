#include <stdio.h>
#include <assert.h>
#include <ctype.h>
#include "translate.h"

#define INDEX_NONE (-1)
#define MAX_COUNT (512)

/*

    포멧팅 하면서 포인터로 연산 할 때의 좋은 점을 발견 할 수 있었습니다.
    두개의 다른 배열 중 한 배열에 값을 다른 배열에 옮길때 인덱스를 신경 않아도 됨

*/

enum error_code switch_escape_chracter(char* character)
{
    switch (*character) {
    case '\\':
        *character = '\\';
        break;
    case 'a':
        *character = '\a';
        break;
    case 'b':
        *character = '\b';
        break;
    case 'n':
        *character = '\n';
        break;
    case 'f':
        *character = '\f';
        break;
    case 'r':
        *character = '\r';
        break;
    case 't':
        *character = '\t';
        break;
    case 'v':
        *character = '\v';
        break;
    case '\'':
        *character = '\'';
        break;
    case '\"':
        *character = '\"';
        break;
    default:
        return ERROR_CODE_INVALID_FORMAT;
    }

    return ERROR_CODE_NONE;
}

enum error_code filter_input(const char* input, int* filtered)
{
    const char* const p_start_input = input;
    const int* const p_start_filtered = filtered;
    error_code_t err;
    int sub[MAX_COUNT];
    int* sub_filtered = sub;

    while (*input != '\0') {
        /* range */
        if (*input == '-' && input != p_start_input && *(input + 1) != '\0' && *(sub_filtered - 2) != '~' && *(sub_filtered - 1) != '~') {
            char start_char = *(filtered - 1);
            char end_char = *(input + 1);

            if (end_char == '\\') {
                end_char = *(input + 2);
                err = switch_escape_chracter(&end_char);

                if (err != ERROR_CODE_NONE) {
                    return err;
                }
            }

            *sub_filtered = '~';

            if (end_char - start_char < 0) {
                return ERROR_CODE_INVALID_RANGE;
            } else if (end_char - start_char == 0) {
                ++input;
                ++sub_filtered;

                *sub_filtered = *input;

                ++input;
                ++sub_filtered;
                continue;
            }

            ++start_char;
            --end_char;

            /* Add range*/
            while (start_char <= end_char) {
                *filtered = start_char;

                ++start_char;
                ++filtered;
            }

            ++input;
            ++sub_filtered;
        } else if (*input == '\\') { /* escape character */
            char escape_char = *(input + 1);
            err = switch_escape_chracter(&escape_char);

            if (err != ERROR_CODE_NONE) {
                return err;
            }

            *filtered = escape_char;
            *sub_filtered = escape_char;

            input += 2;
            ++filtered;
            ++sub_filtered;
        } else { /* nomal */
            *sub_filtered = *input;
            *filtered = *input;

            ++input;
            ++filtered;
            ++sub_filtered;
        }

        if (filtered - p_start_filtered >= MAX_COUNT) {
            return ERROR_CODE_ARGUMENT_TOO_LONG;
        }
    }

    *filtered = '\0';

    return ERROR_CODE_NONE;
}

int reverse_index_of(const int* set1, char ch, int is_sensitive)
{
    const int* const p_start = set1;
    const int* p_current_char = set1;
    int is_alpha = isalpha(ch);

    while (*p_current_char++ != '\0') {
    }

    p_current_char -= 2;

    if (is_sensitive == TRUE || is_alpha == FALSE) {
        while (p_start <= p_current_char) {
            if (*p_current_char == ch) {
                return p_current_char - p_start;
            }

            --p_current_char;
        }
    } else {
        int mask = 1 << 5;
        ch |= mask;

        while (p_start <= p_current_char) {
            int current_char = mask | *p_current_char;

            if (current_char == ch) {
                return p_current_char - p_start;
            }

            --p_current_char;
        }
    }

    return INDEX_NONE;
}

int translate(int argc, const char** argv)
{
    char ch;
    int index;
    error_code_t error_code;
    int is_sensitive;
    int argv_index;
    int set1[MAX_COUNT];
    int set2[MAX_COUNT];
    int* p_set2_last;
    int set2_last_char_index;

    if (argc > 4 || argc < 3) {
        return ERROR_CODE_WRONG_ARGUMENTS_NUMBER;
    } else if (argc == 4) {
        if (argv[1][1] != 'i') {
            return ERROR_CODE_INVALID_FLAG;
        }

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
        if ((index = reverse_index_of(set1, ch, is_sensitive)) != INDEX_NONE) {
            ch = index > set2_last_char_index ? set2[set2_last_char_index] : set2[index];
        }

        printf("%c", ch);
    }

    return ERROR_CODE_NONE;
}
