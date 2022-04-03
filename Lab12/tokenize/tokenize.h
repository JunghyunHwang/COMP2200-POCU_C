#ifndef TOKENIZE_H
#define TOKENIZE_H

char** tokenize_malloc(const char* str, const char* delim);

void destroy(char** tokenized_str);

#endif /* TOKENIZE_H */
