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
        }

        ++p_current;
    }

    return result_index;
}

size_t get_matching_parentheses(parenthesis_t* out_parentheses, size_t max_size, const char* str)
{
    size_t num_parentheses_count = 0;
    const char* p_current = str;
    const char* opening_parentheses = "{([<"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    const char* closing_parentheses = "})]>"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    size_t opening_index;
    size_t closing_index;
    int mapping_opening_index;

    while (*p_current++ != '\0') {
    }
    --p_current;

    while (str < p_current) {
        const char* p_seek;

        mapping_opening_index = is_closing_parenthesis(closing_parentheses, *p_current);

        if (mapping_opening_index == NOT_PARENTHESIS) {
        	goto next_character;
        }

        p_seek = p_current - 1;
        while (str <= p_seek) {
            if (*p_seek == opening_parentheses[mapping_opening_index]) {
                opening_index = p_seek - str;
                closing_index = p_current - str;
                /* insert_front 구현 해야함 */

                out_parentheses[num_parentheses_count].opening_index = opening_index;
                out_parentheses[num_parentheses_count++].closing_index = closing_index;
                break;
            }

            --p_seek;
        }

        if (num_parentheses_count > max_size) {
            break;
        }

    next_character:
        --p_current;
    }

    return num_parentheses_count;
}
