#include <stdio.h>
#include "my_string.h"

#define TRUE (1)

void check_string(char* str)
{
    char* p = str;

    printf("%c", *p);

    while(*++p != '\0') {
        printf("%c", *p);
    }

    printf("\n");
}

void reverse(char* str)
{
    char* str_start_p = str;
    char* str_last_p = str;

    check_string(str);

    if (*(str_start_p + 1) == '\0') {
        return;
    }

    while (*++str_last_p != '\0') {
    }

    --last_char_p;

    while (str_start_p < str_last_p) {
        *str_start_p ^= *str_last_p;
        *str_last_p ^= *str_start_p;
        *str_start_p ^= *str_last_p;
        ++str_start_p;
        --str_last_p;
    }

    check_string(str);
}

int index_of(const char* str, const char* word)
{
    const char* str_start_p = str;
    int index = -1;

    while (*str_start_p != '\0') {
        if (*str_start_p == *word) {
            const char* word_start_p = word;

            while (*str_start_p != '\0' && *word_start_p != '\0') {
                
            }
        }

        ++str_start_p;
    }
}
