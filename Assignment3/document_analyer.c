#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

#include "document_analyer.h"

#define LINE_LENGTH (4096)
#define DELIM_SENTENCE ".!?"
#define DELIM_WORD " ,"

static char**** s_document = NULL;
static size_t s_total_word_count;
static size_t s_total_sentence_count;
static size_t s_total_paragraph_count;

int load_document(const char* document)
{
    FILE* stream;
    char line[LINE_LENGTH];
    size_t num_paragraph_tokenized;

    stream = fopen(document, "r");

    if (stream == NULL) {
    	perror("Fail to file open");
        return FALSE;
    }

    num_paragraph_tokenized = 0;

    while (TRUE) {
    	if (fgets(line, LINE_LENGTH, stream) == NULL) {
    		clearerr(stream);
    		break;
    	}

    	s_document = realloc(s_document, (num_paragraph_tokenized + 1) * sizeof(char*));
    	s_document[num_paragraph_tokenized] = tokenize_sentence(line);
    }

    puts("");

    return TRUE;
}

char*** tokenize_sentence(const char* str)
{
    char*** result;
    const char* p_current;
    const char* p_sentence_start;
    size_t num_sentence_tokenized;

    p_current = str;
    p_sentence_start = str;

    num_sentence_tokenized = 0;
    result = NULL;

    for (; *p_current != '\0'; ++p_current) {
        const char* p_delim = DELIM_SENTENCE;

        for(; *p_delim != '\0'; ++p_delim) {
            if (*p_current == *p_delim) {
                if (p_current == p_sentence_start) {
                    p_sentence_start = p_current + 1;
                    goto next_character;
                }

                result = realloc(result, (num_sentence_tokenized + 1) * sizeof(char*));
                result[num_sentence_tokenized] = tokenize_word(p_sentence_start);

                ++num_sentence_tokenized;
                p_sentence_start = p_current + 1;
                goto next_character;
            }
        }

    next_character:;
    }

    return result;
}

char** tokenize_word(const char* str)
{
    char** result;
    char* word;
    const char* p_current;
    const char* p_word_start;
    size_t num_word_tokenized;
    size_t word_count;

    p_current = str;
    p_word_start = str;

    num_word_tokenized = 0;
    result = NULL;

    for (; *p_current != '\0'; ++p_current) {
        const char* p_delim = DELIM_WORD;

        for(; *p_delim != '\0'; ++p_delim) {
            if (*p_current == *p_delim) {
                if (*p_current == *p_word_start) {
                    p_word_start = p_current + 1;
                    goto next_character;
                }

                result = realloc(result, (num_word_tokenized + 1) * sizeof(char*));

                word_count = p_current - p_word_start;
                word = malloc(word + 1);
                memcpy(word, p_word_start, word_count);
                *(word + word_count) = '\0';

                result[num_word_tokenized] = word;
                ++num_word_tokenized;
                p_word_start = p_current + 1;
                goto next_character;
            }
        }

    next_character:;
    }

    return result;
}

void dispose(void);

size_t get_total_word_count(void)
{
    return s_total_word_count;
}

size_t get_total_sentence_count(void)
{
    return s_total_sentence_count;
}

size_t get_total_paragraph_count(void)
{
    return s_total_paragraph_count;
}

const char*** get_paragraph_or_null(const size_t paragraph_index);

size_t get_paragraph_word_count(const char*** paragraph);

size_t get_paragraph_sentence_count(const char*** paragraph);

const char** get_sentence_or_null(const size_t paragraph_index, const size_t sentence_index);

size_t get_sentence_word_count(const char** sentence);

int print_as_tree(const char* filename);
