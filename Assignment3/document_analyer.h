#ifndef DOCUMENT_ANALYER_H
#define DOCUMENT_ANALYER_H

#define TRUE (1)
#define FALSE (0)

int load_document(const char* document);

char*** tokenize_sentence(const char* str);

char** tokenize_word(const char* str);

void dispose(void);

size_t get_total_word_count(void);

size_t get_total_sentence_count(void);

size_t get_total_paragraph_count(void);

const char*** get_paragraph_or_null(const size_t paragraph_index);

size_t get_paragraph_word_count(const char*** paragraph);

size_t get_paragraph_sentence_count(const char*** paragraph);

const char** get_sentence_or_null(const size_t paragraph_index, const size_t sentence_index);

size_t get_sentence_word_count(const char** sentence);

int print_as_tree(const char* filename);

#endif /* DOCUMENT_ANALYER_H */
