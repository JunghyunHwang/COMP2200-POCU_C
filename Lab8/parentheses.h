#ifndef PARENTHESES_H
#define PARENTHESES_H

#define FALSE (0)

typedef struct {
	size_t opening_index;
	size_t closing_index;
} parenthesis_t;

int is_closing_parenthesis(const char* closing_parentheses, const char character);

int is_opening_parenthesis(const char* opening_parentheses, const char character);

void add_matched_parentheses(parenthesis_t* out_parentheses, size_t parentheses_matched_count, parenthesis_t tmp);

size_t get_matching_parentheses(parenthesis_t* out_parentheses, size_t max_size, const char* str);

#endif /* PARENTHESES_H */
