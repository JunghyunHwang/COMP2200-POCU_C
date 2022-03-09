#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include "parentheses.h"

#define NOT_PARENTHESIS (-1)

typedef struct {
    char parenthesis;
    parenthesis_t address;
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

size_t get_matching_parentheses(parenthesis_t* out_parentheses, size_t max_size, const char* str)
{
    const char** opening_parentheses_stack;
    size_t parentheses_matched_count = 0;
    size_t opening_parentheses_count = 0;
    size_t opening_index;
    size_t closing_index;
    const char* p_current;
    const char* opening_parentheses = "{([<"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    const char* closing_parentheses = "})]>"; /* 쌍이되는 괄호끼리 같은 index여야 함 */
    int matched_opening_index;
    size_t i;

    p_current = str;

    /* 여는 괄호 기준을 배열에 담고 닫는 괄호를 만나면 마지막 요소와 짝꿍 */
    /* line 49 compile errors change malloc */

    while (*p_current != '\0') {
        if (is_opening_parenthesis(opening_parentheses, *p_current) >= 0) {
            printf("Add opening in stack '%c'\n", *p_current);
            opening_parentheses_stack = realloc(opening_parentheses_stack, (opening_parentheses_count + 1) * sizeof(char*));
            opening_parentheses_stack[opening_parentheses_count++] = p_current;
        } else if ((matched_opening_index = is_closing_parenthesis(closing_parentheses, *p_current)) >= 0) {
            const char** p_seek = opening_parentheses_stack + opening_parentheses_count - 1;
            const char matched_opening_parenthesis = opening_parentheses[matched_opening_index];
            printf("check opening in stack '%c'\n", **p_seek);

            while (opening_parentheses_stack <= p_seek) {
                if (**p_seek == matched_opening_parenthesis) {
                    opening_index = *p_seek - str;
                    closing_index = p_current - str;

                    *p_seek = NULL;

                    out_parentheses[parentheses_matched_count].opening_index = opening_index;
                    out_parentheses[parentheses_matched_count++].closing_index = closing_index;

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

    printf("opening_parentheses_count: %d\n", opening_parentheses_count);

    /* Dispose memory */
    for (i = 0; i < opening_parentheses_count; ++i) {
        free(opening_parentheses_stack + i);
    }

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
