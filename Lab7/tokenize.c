#define _CRT_SECURE_NO_WARNINGS
#include <stdlib.h>
#include <string.h>
#include <assert.h>

char** tokenize_malloc(const char* str, const char* delim)
{
    char** result;
    char* token;
    const char* p_current;
    const char* p_tokenize_start;
    size_t num_tokenized_count;
    size_t token_length;

    p_current = str;
    p_tokenize_start = str;

    num_tokenized_count = 0;
    result = NULL;

    if (*str == '\0') {
        goto add_null;
    } else if (*delim == '\0') {
        while (*p_current++ != '\0') {
        }
        --p_current;

        token_length = p_current - p_tokenize_start;
        token = malloc(token_length + 1);
        memcpy(token, p_tokenize_start, token_length);
        *(token + token_length) = '\0';

        result = realloc(result, (num_tokenized_count + 1) * sizeof(char*));
        result[num_tokenized_count++] = token;

        token = NULL;

        goto add_null;
    }

    for(; *p_current != '\0'; ++p_current) {
        const char* p_delim = delim;

        for (; *p_delim != '\0'; ++p_delim) {
            if (*p_current == *p_delim) {
                if (p_current == p_tokenize_start) { /* 시작 문자가 구분 문자 이거나, 연속되는 구분 문자 */
                    p_tokenize_start = p_current + 1;
                    goto next_character;
                }

                token_length = p_current - p_tokenize_start;
                token = malloc(token_length + 1);
                memcpy(token, p_tokenize_start, token_length);
                *(token + token_length) = '\0';

                p_tokenize_start = p_current + 1;

                result = realloc(result, (num_tokenized_count + 1) * sizeof(char*));
                result[num_tokenized_count++] = token;

                token = NULL;

                goto next_character;
            }
        }

    next_character:;
    }

    if (p_current != p_tokenize_start) {
        token_length = p_current - p_tokenize_start;
        token = malloc(token_length + 1);
        memcpy(token, p_tokenize_start, token_length);
        *(token + token_length) = '\0';

        p_tokenize_start = p_current;

        result = realloc(result, (num_tokenized_count + 1) * sizeof(char*));
        result[num_tokenized_count++] = token;

        token = NULL;
    }

add_null:
    result = realloc(result, (num_tokenized_count + 1) * sizeof(char*));
    result[num_tokenized_count++] = NULL;

    return result;
}
