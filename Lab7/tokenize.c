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
    size_t num_tokenized;
    size_t count;

    p_current = str;
    p_tokenize_start = str;

    num_tokenized = 0;
    result = NULL;

    if (*str == '\0') {
        goto add_null;
    } else if (*delim == '\0') {
        while (*p_current++ != '\0') {
        }
        --p_current;

        count = p_current - p_tokenize_start;
        token = malloc(count + 1);
        memcpy(token, p_tokenize_start, count);
        *(token + count) = '\0';

        result = realloc(result, (num_tokenized + 1) * sizeof(char*));
        result[num_tokenized] = token;
        ++num_tokenized;

        goto add_null;
    }

    for(; *p_current != '\0'; ++p_current) {
        const char* p_delim = delim;

        for (; *p_delim != '\0'; ++p_delim) {
            if (*p_current == *p_delim) {
                if (p_current == p_tokenize_start) {
                    p_tokenize_start = p_current + 1;
                    goto next_character;
                }

                count = p_current - p_tokenize_start;
                token = malloc(count + 1);
                memcpy(token, p_tokenize_start, count);
                *(token + count) = '\0';

                p_tokenize_start = p_current + 1;

                result = realloc(result, (num_tokenized + 1) * sizeof(char*));
                result[num_tokenized] = token;
                ++num_tokenized;

                goto next_character;
            }
        }

    next_character:;
    }

    if (p_current != p_tokenize_start) {
        count = p_current - p_tokenize_start;
        token = malloc(count + 1);
        memcpy(token, p_tokenize_start, count);
        *(token + count) = '\0';

        p_tokenize_start = p_current;

        result = realloc(result, (num_tokenized + 1) * sizeof(char*));
        result[num_tokenized] = token;
        ++num_tokenized;
    }

add_null:
    result = realloc(result, (num_tokenized + 1) * sizeof(char*));
    result[num_tokenized] = NULL;
    ++num_tokenized;

    return result;
}
