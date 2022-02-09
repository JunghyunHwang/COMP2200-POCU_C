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

int reverse_index_of(const int* set1, char ch, int is_sensitive);

enum error_code switch_escape_chracter(char* chracter);

enum error_code filter_input(const char* input, int* filtered);

#endif /* TRANSLATE_H */
