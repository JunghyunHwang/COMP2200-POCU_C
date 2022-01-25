#include <stdio.h>
#include "my_string.h"

static char* s_tonkenized_str = NULL;

void print_string(const char* str)
{
    const char* p = str;

    while(*p != '\0') {
        printf("%c", *p);
        ++p;
    }

    printf("\n");
}

void swap_character(char* first, char* last)
{
    while (first < last) {
        *first ^= *last;
        *last ^= *first;
        *first ^= *last;
        ++first;
        --last;
    }
}

void reverse(char* str)
{
    char* str_start_p = str;
    char* str_last_p = str;

    if (*(str + 1) == '\0') {
        return;
    }

    while (*++str_last_p != '\0') {
    }

    --str_last_p;
    swap_character(str_start_p, str_last_p);
}

int index_of(const char* str, const char* word)
{
    /* ha happy */
    const char* str_start_p = str;
    const char* word_start_p = word;
    int index = 0;
    size_t word_length = 0;
    size_t i;

    while (*word_start_p++ != '\0') {
        ++word_length;
    }
    printf("word_length: %lu\n", word_length);

    while (*str_start_p != '\0') {
        if (*str_start_p == *word) {
            const char* temp_str_p = str_start_p;
            word_start_p = word;

            for (i = 0; i < word_length; ++i) {
                printf("str: %c  ", *temp_str_p);
                printf("word: %c \n", *word_start_p);
                if (*word_start_p++ != *temp_str_p++) {
                    break;
                }
            }

            if (i == word_length) {
                goto found_index;
            }

            str_start_p += i - 1;
            index += i - 1;
        }

        ++str_start_p;
        ++index;
    }

    index = -1;

found_index:
    return index;
}

void reverse_by_words(char* str)
{
    char* str_start_p = str;
    char* current_location_p = str;

    while (*current_location_p != '\0') {
        if (*current_location_p == ' ') {
            char* word_end_p = current_location_p - 1;

            while (str_start_p < word_end_p) {
                *str_start_p ^= *word_end_p;
                *word_end_p ^= *str_start_p;
                *str_start_p ^= *word_end_p;

                ++str_start_p;
                --word_end_p;
            }

            str_start_p = current_location_p + 1;
        }

        ++current_location_p;
    }

    /* last word */
    --current_location_p;

    swap_character(str_start_p, current_location_p);
}

/*
char str[] = "!!!!!! Oh";
char* token = reverse_tokenize(str, " !");
assert(strcmp(token, "hO") == 0);
*/
char* tokenize(char* str_or_null, const char* delims) {
    char* current_location_p;
    char* result_p;

    if (str_or_null != NULL) {
        s_tonkenized_str = str_or_null;
    } else if (str_or_null == NULL && s_tonkenized_str == NULL) {
        return NULL;
    }

    current_location_p = s_tonkenized_str;

    while (*current_location_p != '\0') {
        const char* delims_start_p = delims;

        while (*delims_start_p != '\0') {
            if (*delims_start_p == *current_location_p) {
                *current_location_p = '\0';
                result_p = s_tonkenized_str;
                s_tonkenized_str = current_location_p + 1;

                goto tokenized;
            }

            ++delims_start_p;
        }

        ++current_location_p;
    }

    result_p = s_tonkenized_str;

tokenized:
    return result_p;
}

char* reverse_tokenize(char* str_or_null, const char* delims) {
    char* current_location_p;
    char* result_p;

    if (str_or_null != NULL) {
        s_tonkenized_str = str_or_null;
    } else if (str_or_null == NULL && s_tonkenized_str == NULL) {
        return NULL;
    }

    current_location_p = s_tonkenized_str;

    while (*current_location_p != '\0') {
        const char* delims_start_p = delims;

        while (*delims_start_p != '\0') {
            if (*delims_start_p == *current_location_p) {
                *current_location_p = '\0';

                if (current_location_p != s_tonkenized_str) {
                    swap_character(s_tonkenized_str, current_location_p - 1);
                }

                result_p = s_tonkenized_str;
                s_tonkenized_str = current_location_p + 1;

                goto tokenized;
            }

            ++delims_start_p;
        }

        ++current_location_p;
    }

    result_p = s_tonkenized_str;

tokenized:
    return result_p;
}

