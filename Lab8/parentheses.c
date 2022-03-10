#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include "parentheses.h"

int is_parenthesis(const char* opening_parentheses, const char character)
{
    int result_index = -1;
    const char* p_current = opening_parentheses;

    while (*p_current != '\0') {
        if (*p_current == character) {
            result_index = p_current - opening_parentheses;
            break;
        }

        ++p_current;
    }

    return result_index;
}

size_t get_matching_parentheses(parenthesis_t* out_parentheses, size_t max_size, const char* str)
{
    size_t parentheses_matched_count = 0;
    const char* p_current;
    const char* opening_parentheses = "{([<"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    const char* closing_parentheses = "})]>"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    int matched_closing_index;
    size_t i;

    p_current = str;
    while (*p_current != '\0') {
        if ((matched_closing_index = is_parenthesis(opening_parentheses, *p_current)) >= 0) {
            const char* p_seek = p_current + 1;
            size_t same_parenthesis_count = 0;

            while (*p_seek != '\0') {
                if (is_parenthesis(closing_parentheses, *p_seek) == matched_closing_index) {
                    if (same_parenthesis_count == 0) {
                        out_parentheses[parentheses_matched_count].opening_index = p_current - str;
                        out_parentheses[parentheses_matched_count++].closing_index = p_seek - str;
                        break;
                    } else {
                        --same_parenthesis_count;
                    }
                } else if (*p_current == *p_seek) {
                    ++same_parenthesis_count;
                }

                ++p_seek;
            }
        }

        if (parentheses_matched_count >= max_size) {
            break;
        }

        ++p_current;
    }

    for (i = 0; i < parentheses_matched_count; ++i) {
        printf("======= No. %d =======\n", i);
        printf("opening index: %d\n", out_parentheses[i].opening_index);
        printf("closing index: %d\n", out_parentheses[i].closing_index);
        puts("=====================");
    }

    return parentheses_matched_count;
}
