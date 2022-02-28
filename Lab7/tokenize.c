#include <stdio.h>
#include <assert.h>

char** tokenize_malloc(const char* str, const char* delim)
{
    char** result;
    char* p_current = str;
    char* p_tokenize_start = str;
    size_t num_tokenized = 0;

    while (*p_current != '\0') {
        char* p_delim = delim;

        while (*p_delim != '\0') {
            if (*p_current == *p_delim) {
            	size_t count;
            	char* tmp;

                if (p_current == p_tokenize_start) {
                    p_tokenize_start = p_current + 1;
                    goto tokenized;
                }

                count = p_current - p_tokenize_start;

                malloc(tmp, count + 1);
                memcpy(tmp, p_tokenize_start, count);
                *(tmp + count) = '\0';

                malloc(result, sizeof(char*));
                result[num_tokenized] = tmp;

                p_tokenize_start = p_current + 1;
                ++num_tokenized;
            }

            ++p_delim;
        }

    tokenized:
        ++p_current;
    }

    return result;
}