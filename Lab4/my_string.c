#include <stdio.h>
#include "my_string.h"

#define NOT_FOUND -1

static char* s_tonkenized_p = NULL;

void reverse_string(char* first, char* last)
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
    char* p_start_str = str;
    char* p_end_str = str;

    if (*str == '\0' || *(str + 1) == '\0') {
        return;
    }

    while (*++p_end_str != '\0') {
    }

    --p_end_str;
    reverse_string(p_start_str, p_end_str);
}

int index_of(const char* str, const char* word)
{
    const char* p_start_str = str;
    const char* p_start_word = word;
    int index = 0;

    if (*str == '\0' || *word == '\0') {
        return 0;
    }

    while (*p_start_str != '\0') {
        if (*p_start_str == *word) {
            const char* p_temp_str = p_start_str;
            p_start_word = word;

            while (*p_start_word != '\0' && *p_temp_str != '\0'
                    && *p_start_word == *p_temp_str)
            {
                ++p_start_word;
                ++p_temp_str;
            }

            if (*p_start_word == '\0')
            {
                return index;
            }
        }

        ++p_start_str;
        ++index;
    }

    return NOT_FOUND;
}

void reverse_by_words(char* str)
{
    char* p_start_str = str;
    char* p_curr = str;

    if (*str == '\0' || *(str + 1) == '\0') {
        return;
    }

    while (*p_curr != '\0') {
        if (*p_curr == ' ') {
            char* p_end_word = p_curr - 1;

            reverse_string(p_start_str, p_end_word);

            p_start_str = p_curr + 1;
        }

        ++p_curr;
    }

    /* last word */
    reverse_string(p_start_str, p_curr - 1);
}

char* tokenize(char* str_or_null, const char* delims)
{
    char* p_curr;
    char* p_ret = NULL;

    if (str_or_null != NULL) {
        s_tonkenized_p = str_or_null;
    } else if (str_or_null == NULL && s_tonkenized_p == NULL) {
        return NULL;
    }

    p_curr = s_tonkenized_p;

    while (*p_curr != '\0') {
        const char* p_start_delims = delims;

        while (*p_start_delims != '\0') {
            if (*p_start_delims == *p_curr) {
                *p_curr = '\0';

                if (p_curr == s_tonkenized_p) {
                    ++p_curr;
                    ++s_tonkenized_p;

                    goto first_character_delims;
                } else {
                    p_ret = s_tonkenized_p;
                    s_tonkenized_p = p_curr + 1;

                    goto tokenized;
                }
            }

            ++p_start_delims;
        }

        ++p_curr;
    first_character_delims:;
    }

    p_ret = s_tonkenized_p;
    s_tonkenized_p = NULL;

tokenized:
    return p_ret;
}

char* reverse_tokenize(char* str_or_null, const char* delims)
{
    char* current_location_p;
    char* result_p;

    if (str_or_null != NULL) {
        s_tonkenized_p = str_or_null;
    } else if (str_or_null == NULL && s_tonkenized_p == NULL) {
        return NULL;
    }

    current_location_p = s_tonkenized_p;

    while (*current_location_p != '\0') {
        const char* delims_start_p = delims;

        while (*delims_start_p != '\0') {
            if (*delims_start_p == *current_location_p) {
                *current_location_p = '\0';

                if (current_location_p == s_tonkenized_p) {
                    ++current_location_p;
                    ++s_tonkenized_p;

                    goto first_character_delims;
                } else {
                    reverse_string(s_tonkenized_p, current_location_p - 1);

                    result_p = s_tonkenized_p;
                    s_tonkenized_p = current_location_p + 1;

                    goto tokenized;
                }
            }

            ++delims_start_p;
        }

        ++current_location_p;
    first_character_delims:;
    }

    reverse_string(s_tonkenized_p, current_location_p - 1);

    result_p = s_tonkenized_p;
    s_tonkenized_p = NULL;

tokenized:
    return result_p;
}

