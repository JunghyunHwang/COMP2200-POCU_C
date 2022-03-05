#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <assert.h>

#include "document_analyzer.h"

#define LINE_LENGTH (4096)
#define DELIM_SENTENCE ".!?"
#define DELIM_WORD " ,"

static char**** s_document = NULL;
static size_t s_total_word_count = 0;
static size_t s_total_sentence_count = 0;
static size_t s_total_paragraph_count = 0;

/*
    문장이 끝나지 않고 문단이 끝났다면? => 문장도 끝내야함
*/

int load_document(const char* document)
{
    FILE* stream;
    char line[LINE_LENGTH];
    size_t num_paragraph_tokenized;

    stream = fopen(document, "rb");

    if (stream == NULL) {
        perror("Fail to file open");
        return FALSE;
    }

    dispose();
    num_paragraph_tokenized = 0;

    while (TRUE) {
        if (fgets(line, LINE_LENGTH, stream) == NULL) {
            clearerr(stream);
            break;
        }

        if (line[0] == '\r' || line[0] == '\n') {
            continue;
        }

        printf("Paragraph: \n%s\n", line);

        s_document = realloc(s_document, (num_paragraph_tokenized + 1) * sizeof(char*));
        s_document[num_paragraph_tokenized] = tokenize_sentence(line);
        ++num_paragraph_tokenized;
    }

    s_total_paragraph_count += num_paragraph_tokenized;

    s_document = realloc(s_document, (num_paragraph_tokenized + 1) * sizeof(char*));
    s_document[num_paragraph_tokenized] = NULL;

    fclose(stream);

    return TRUE;
}

char*** tokenize_sentence(const char* input_paragraph)
{
    char*** result_paragraph;
    const char* p_current;
    const char* p_sentence_start;
    char* tmp_sentence;
    size_t num_sentence_tokenized;
    size_t sentence_length;

    p_current = input_paragraph;
    p_sentence_start = input_paragraph;

    num_sentence_tokenized = 0;
    result_paragraph = NULL;

    for (; *p_current != '\0'; ++p_current) {
        const char* p_delim = DELIM_SENTENCE;

        for (; *p_delim != '\0'; ++p_delim) {
            if (*p_current == *p_delim) {
                if (p_current == p_sentence_start) {
                    p_sentence_start = p_current + 1;
                    goto next_character;
                }

                sentence_length = p_current - p_sentence_start;
                tmp_sentence = malloc(sentence_length + 1);
                memcpy(tmp_sentence, p_sentence_start, sentence_length);
                *(tmp_sentence + sentence_length) = '\0';

                p_sentence_start = p_current + 1;

                result_paragraph = realloc(result_paragraph, (num_sentence_tokenized + 1) * sizeof(char*));
                result_paragraph[num_sentence_tokenized] = tokenize_word(tmp_sentence);
                ++num_sentence_tokenized;

                goto next_character;
            }
        }

    next_character:;
    }

    s_total_sentence_count += num_sentence_tokenized;

    result_paragraph = realloc(result_paragraph, (num_sentence_tokenized + 1) * sizeof(char*));
    result_paragraph[num_sentence_tokenized] = NULL;

    return result_paragraph;
}

char** tokenize_word(const char* input_sentence)
{
    char** result_sentence;
    char* word;
    const char* p_current;
    const char* p_word_start;
    size_t num_word_tokenized;
    size_t word_length;

    p_current = input_sentence;
    p_word_start = input_sentence;

    num_word_tokenized = 0;
    result_sentence = NULL;

    for (; *p_current != '\0'; ++p_current) {
        const char* p_delim = DELIM_WORD;

        for (; *p_delim != '\0'; ++p_delim) {
            if (*p_current == *p_delim) {
                if (*p_current == *p_word_start) {
                    p_word_start = p_current + 1;
                    goto next_character;
                }

                word_length = p_current - p_word_start;
                word = malloc(word_length + 1);
                memcpy(word, p_word_start, word_length);
                *(word + word_length) = '\0';

                p_word_start = p_current + 1;

                result_sentence = realloc(result_sentence, (num_word_tokenized + 1) * sizeof(char*));
                result_sentence[num_word_tokenized] = word;
                ++num_word_tokenized;

                goto next_character;
            }
        }

    next_character:;
    }

    assert(*p_current == '\0');

    if (p_current != p_word_start) {
        word_length = p_current - p_word_start;
        word = malloc(word_length + 1);
        memcpy(word, p_word_start, word_length);
        *(word + word_length) = '\0';

        assert(strlen(word) == word_length);

        p_word_start = p_current;

        result_sentence = realloc(result_sentence, (num_word_tokenized + 1) * sizeof(char*));
        result_sentence[num_word_tokenized] = word;
        ++num_word_tokenized;
    }

    assert(p_current == p_word_start);

    s_total_word_count += num_word_tokenized;

    {
        size_t i;
        puts("============ Save Word ============");

        for (i = 0; i < num_word_tokenized; ++i) {
            printf("%s\n", result_sentence[i]);
        }
    }

    result_sentence = realloc(result_sentence, (num_word_tokenized + 1) * sizeof(char*));
    result_sentence[num_word_tokenized] = NULL;

    return result_sentence;
}

void dispose(void)
{
    size_t paragraph_count;
    size_t sentence_count;
    size_t word_count;
    size_t i;
    size_t j;
    size_t k;

    if (s_document == NULL) {
        return;
    } else if (s_total_paragraph_count == 0) { /* empty file */
        puts("Dispose empty file");
        free(*s_document);
        return;
    }

    puts("============ Dispose memeory ============");

    paragraph_count = s_total_paragraph_count;

    for (i = 0; i < paragraph_count; ++i) {
        char*** paragraph = s_document[i];
        sentence_count = get_paragraph_sentence_count((const char***)paragraph);

        for (j = 0; j < sentence_count; ++j) {
            char** sentence = paragraph[j];
            word_count = get_sentence_word_count((const char**)sentence);

            for (k = 0; k < word_count; ++k) {
                free(sentence[k]);
                sentence[k] = NULL;
                --s_total_word_count;
            }

            free(sentence);
            sentence = NULL;
            --s_total_sentence_count;
        }

        free(paragraph);
        paragraph = NULL;
        --s_total_paragraph_count;
    }

    free(s_document);
    s_document = NULL;

    assert(s_total_paragraph_count == 0);
    assert(s_total_sentence_count == 0);
    assert(s_total_word_count == 0);
}

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

const char*** get_paragraph_or_null(const size_t paragraph_index)
{
    if (paragraph_index >= s_total_paragraph_count) {
        return NULL;
    }

    return (const char***)s_document[paragraph_index];
}

size_t get_paragraph_word_count(const char*** paragraph)
{
    size_t result_count;
    size_t sentence_count;
    size_t i;

    if (s_total_paragraph_count == 0) {
        return 0;
    }

    result_count = 0;
    sentence_count = get_paragraph_sentence_count(paragraph);

    for (i = 0; i < sentence_count; ++i) {
        const char** sentence = paragraph[i];

        for (; *sentence != NULL; ++sentence) {
            ++result_count;
        }
    }

    return result_count;
}

size_t get_paragraph_sentence_count(const char*** paragraph)
{
    size_t result_count;

    if (s_total_paragraph_count == 0) {
        return 0;
    }

    result_count = 0;

    for (; *paragraph != NULL; ++paragraph) {
        ++result_count;
    }

    return result_count;
}

const char** get_sentence_or_null(const size_t paragraph_index, const size_t sentence_index)
{
    if (paragraph_index >= s_total_paragraph_count || sentence_index >= s_total_sentence_count) {
        return NULL;
    }

    return (const char**)s_document[paragraph_index][sentence_index];
}

size_t get_sentence_word_count(const char** sentence)
{
    size_t result_count;

    if (s_total_paragraph_count == 0) {
        return 0;
    }

    result_count = 0;

    for (; *sentence != NULL; ++sentence) {
        ++result_count;
    }

    return result_count;
}

int print_as_tree(const char* filename)
{
    FILE* stream;
    size_t sentence_count;
    size_t word_count;
    size_t i;
    size_t j;
    size_t k;

    if (s_document == NULL || s_total_paragraph_count == 0) {
        puts("Only null loaded document memory");
        return FALSE;
    }

    stream = fopen(filename, "wb");

    if (stream == NULL) {
        perror("Fail to file open");
        return FALSE;
    }

    puts("===== Print tree =====");
    for (i = 0; i < s_total_paragraph_count; ++i) {
        char*** paragraph = s_document[i];

        if (i > 0) {
            fprintf(stream, "\n\n");
        }

        fprintf(stream, "%s %d:", "Paragraph", i);

        sentence_count = get_paragraph_sentence_count((const char***)paragraph);

        for (j = 0; j < sentence_count; ++j) {
            char** sentence = paragraph[j];
            fprintf(stream, "\n%4s%s %d:", "", "Sentence", j);

            word_count = get_sentence_word_count((const char**)sentence);

            for (k = 0; k < word_count; ++k) {
                fprintf(stream, "\n%8s%s", "", sentence[k]);
            }
        }
    }

    fclose(stream);

    return TRUE;
}
