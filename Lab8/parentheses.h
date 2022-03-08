#ifndef PARENTHESES_H
#define PARENTHESES_H

typedef struct {
	size_t opening_index;
	size_t closing_index;
} parenthesis_t;

int is_closing_parenthesis(const char* closing_parentheses, const char character);

size_t get_matching_parentheses(parenthesis_t* out_parentheses, size_t max_size, const char* str);

#endif /* PARENTHESES_H */
