#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

char** tokenize_malloc(const char* str, const char* delim, int* out_tokenized_count)
{
    char** result;
    const char* p_current = str;
    const char* p_tokenize_start = str;
    char* tmp;

    size_t num_tokenized;
    size_t count;

    result = NULL;
    num_tokenized = 0;

    while (*p_current != '\0') {
        const char* p_delim = delim;
        printf("Current character: %c\n", *p_current);

        while (*p_delim != '\0') {
            printf("Current delim %d\n", *p_delim);
            if (*p_current == *p_delim) {
                if (p_current == p_tokenize_start) {
                    p_tokenize_start = p_current + 1;
                    goto tokenized;
                }

                count = p_current - p_tokenize_start;
                printf("count: %d\n", count);

                result = realloc(result, (num_tokenized + 1) * sizeof(char*));
                printf("result address: %p\n", (void*)result);
                assert(result != NULL);

                tmp = malloc(count + 1);
                memcpy(tmp, p_tokenize_start, count);
                *(tmp + count) = '\0';

                result[num_tokenized] = tmp;

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
        realloc(result, sizeof(char*));
        tmp = malloc(count + 1);
        memcpy(tmp, p_tokenize_start, count);
        *(tmp + count) = '\0';

        result[num_tokenized] = tmp;
        ++num_tokenized;
        p_tokenize_start = p_current;
    }

    realloc(result, sizeof(char*));
    result[num_tokenized] = NULL;

    assert(p_current == p_tokenize_start);
    assert(result[num_tokenized] == NULL);

    *out_tokenized_count = num_tokenized;
    printf("num_tokenized: %d\n", num_tokenized);

    return result;
}
