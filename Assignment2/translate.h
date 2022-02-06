#ifndef TRANSLATE_H
#define TRANSLATE_H

#define TRUE (1)
#define FALSE (0)

typedef enum error_code {
    ERROR_CODE_NONE,
    ERROR_CODE_WRONG_ARGUMENTS_NUMBER,
    ERROR_CODE_INVALID_FLAG,
    ERROR_CODE_INVALID_FORMAT,
    ERROR_CODE_ARGUMENT_TOO_LONG,
    ERROR_CODE_INVALID_RANGE
} error_code_t;

int translate(int argc, const char** argv);

int index_of(const char* set1, char c);

void set_delimiters(char* set1, char* set2, const char* input1, const char* input2);

enum error_code filter_range(const char* input, char* filtered);

#endif /* TRANSLATE_H */
