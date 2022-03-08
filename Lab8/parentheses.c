#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "parentheses.h"

#define NOT_PARENTHESIS (-1)

int is_closing_parenthesis(const char* closing_parentheses, const char character)
{
    int result_index = -1;
    const char* p_current = closing_parentheses;

    while (*p_current != '\0') {
        if (*p_current == character) {
            result_index = p_current - closing_parentheses;
            break;
        }

        ++p_current;
    }

    return result_index;
}

size_t get_matching_parentheses(parenthesis_t* out_parentheses, size_t max_size, const char* str)
{
    size_t num_parentheses_count = 0;
    size_t opening_index;
    size_t closing_index;
    const char* p_current;
    const char* opening_parentheses = "{([<"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    const char* closing_parentheses = "})]>"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    const char* p_last_opening_parenthsis;
    int mapping_opening_index;
    size_t i;

    p_current = str + 1;
    p_last_opening_parenthsis = NULL;

    /* 여는 괄호 기준을 배열에 담고 닫는 괄호를 만나면 마지막 요소와 짝꿍 */

    while (*p_current != '\0') {
        const char* p_seek;

        mapping_opening_index = is_closing_parenthesis(closing_parentheses, *p_current);

        if (mapping_opening_index == NOT_PARENTHESIS) {
        	goto next_character;
        }

        p_seek = p_last_opening_parenthsis != NULL ? p_last_opening_parenthsis : p_current - 1;
        while (str <= p_seek) {
            if (*p_seek == opening_parentheses[mapping_opening_index]) {
                opening_index = p_seek - str;
                closing_index = p_current - str;

                out_parentheses[num_parentheses_count].opening_index = opening_index;
                out_parentheses[num_parentheses_count++].closing_index = closing_index;

                p_last_opening_parenthsis = p_seek - 1;
                break;
            }

            --p_seek;
        }

        if (num_parentheses_count >= max_size) {
            break;
        }

    next_character:
        ++p_current;
    }

    for (i = 0; i < num_parentheses_count; ++i) {
        printf("======= No. %d =======\n", i);
        printf("opening index: %d\n", out_parentheses[i].opening_index);
        printf("closing index: %d\n", out_parentheses[i].closing_index);
        puts("=====================");
    }

    return num_parentheses_count;
}
