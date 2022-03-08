#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "parentheses.h"

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
        const char* is_closing_parenthesis;

        is_closing_parenthesis = strstr(closing_parentheses, *p_current);

        if (is_closing_parenthesis == NULL) {
            goto next_character;
        }

        mapping_opening_index = is_closing_parenthesis - closing_parentheses;

        p_seek = p_current - 1;
        while (str <= p_seek) {
            if (*p_seek == opening_parentheses[mapping_opening_index]) {
                opening_index = p_seek - str;
                closing_index = p_current - str;

                out_parentheses[num_parentheses_count]->opening_index = opening_index;
                out_parentheses[num_parentheses_count++]->closing_index = closing_index;
                break;
            }
        }

        if (num_parentheses_count > max_size) {
            break;
        }

    next_character:;
    }

    return num_parentheses_count;
}
