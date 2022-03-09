#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include "parentheses.h"

#define NOT_PARENTHESIS (-1)

typedef struct {
    char parenthesis;
    size_t str_index;
} opening_parentheses_t;

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

int is_opening_parenthesis(const char* opening_parentheses, const char character)
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

int compare_opening_index(const void* p0, const void* p1)
{
    const parenthesis_t* parenthesis0 = p0;
    const parenthesis_t* parenthesis1 = p1;

    return parenthesis0->opening_index - parenthesis1->opening_index;
}

size_t get_matching_parentheses(parenthesis_t* out_parentheses, size_t max_size, const char* str)
{
    const char** opening_parentheses_stack;
    size_t parentheses_matched_count = 0;
    size_t opening_parentheses_count = 0;
    const char* p_current;
    const char* opening_parentheses = "{([<"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    const char* closing_parentheses = "})]>"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    int matched_opening_index;
    size_t i;

    opening_parentheses_stack = NULL;

    p_current = str;
    while (*p_current != '\0') {
        if (is_opening_parenthesis(opening_parentheses, *p_current) >= 0) {
            opening_parentheses_stack = realloc(opening_parentheses_stack, (opening_parentheses_count + 1) * sizeof(char*));
            opening_parentheses_stack[opening_parentheses_count++] = p_current;
        } else if ((matched_opening_index = is_closing_parenthesis(closing_parentheses, *p_current)) >= 0 && opening_parentheses_stack != NULL) {
            const char** p_seek = opening_parentheses_stack + opening_parentheses_count - 1;
            const char matched_opening_parenthesis = opening_parentheses[matched_opening_index];

            while (opening_parentheses_stack <= p_seek) {
                if (**p_seek == matched_opening_parenthesis) {
                    out_parentheses[parentheses_matched_count].opening_index = *p_seek - str;
                    out_parentheses[parentheses_matched_count++].closing_index = p_current - str;

                    *p_seek = NULL;
                    --opening_parentheses_count;
                    break;
                }

                --p_seek;
            }
        }

        if (parentheses_matched_count >= max_size) {
            break;
        }

        ++p_current;
    }

    qsort(out_parentheses, parentheses_matched_count, sizeof(parenthesis_t), compare_opening_index);

    free(opening_parentheses_stack);
    opening_parentheses_stack = NULL;

    for (i = 0; i < parentheses_matched_count; ++i) {
        printf("======= No. %d =======\n", i);
        printf("opening index: %d\n", out_parentheses[i].opening_index);
        printf("closing index: %d\n", out_parentheses[i].closing_index);
        puts("=====================");
    }

    return parentheses_matched_count;
}
