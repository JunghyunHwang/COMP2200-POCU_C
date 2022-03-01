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
    	s_document[num_paragraph_tokenized] = tokenize_paragraph(line);
    }

    puts("");

    return TRUE;
}

char*** tokenize_paragraph(const char* str)
{
    char*** result;
}

char** tokenize_sentence(const char* str)
{
    
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
