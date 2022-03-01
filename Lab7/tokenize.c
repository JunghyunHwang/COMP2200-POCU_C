#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

char** tokenize_malloc(const char* str, const char* delim)
{
    char** result;
    char* token;
    const char* p_current = str;
    const char* p_tokenize_start = str;
    size_t num_tokenized;
    size_t count;

    result = NULL;
    num_tokenized = 0;

    if (*str == '\0') {
        goto add_null;
    } else if (*delim == '\0') {
        while (*p_current++ != '\0') {
        }

        --p_current;
        count = p_current - p_tokenize_start;
        result = realloc(result, (num_tokenized + 1) * sizeof(char*));

        token = malloc(count + 1);
        memcpy(token, p_tokenize_start, count);
        *(token + count) = '\0';

        result[num_tokenized] = token;
        ++num_tokenized;

        goto add_null;
    }

    while (*p_current != '\0') {
        const char* p_delim = delim;

        while (*p_delim != '\0') {
            if (*p_current == *p_delim) {
                if (p_current == p_tokenize_start) {
                    p_tokenize_start = p_current + 1;
                    goto tokenized;
                }

                count = p_current - p_tokenize_start;

                result = realloc(result, (num_tokenized + 1) * sizeof(char*));
                assert(result != NULL);

                token = malloc(count + 1);
                memcpy(token, p_tokenize_start, count);
                *(token + count) = '\0';

                result[num_tokenized] = token;

                p_tokenize_start = p_current + 1;
                ++num_tokenized;
                goto tokenized;
            }

            ++p_delim;
        }

    tokenized:
        ++p_current;
    }

    if (p_current != p_tokenize_start) {
        count = p_current - p_tokenize_start;
        result = realloc(result, (num_tokenized + 1) * sizeof(char*));
        token = malloc(count + 1);
        memcpy(token, p_tokenize_start, count);
        *(token + count) = '\0';

        result[num_tokenized] = token;
        ++num_tokenized;
        p_tokenize_start = p_current;
    }

add_null:
    result = realloc(result, (num_tokenized + 1) * sizeof(char*));
    result[num_tokenized] = NULL;
    ++num_tokenized;

    return result;
}
