#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>

#include "tokenize.h"

int main(void)
{
    int tokenized_count;
    int* out_tokenized_count = &tokenized_count;
    char** tokens = tokenize_malloc("Give me the beat, I ride it like a jetski", " ,", out_tokenized_count);
    char** tt = tokens;
    size_t i;

    ++tokenized_count;

    for (i = 0; i < (size_t)tokenized_count; ++i) {
        printf("%s\n", *tt == NULL ? "Null" : *tt++);
    }

    tt = tokens;
    while (*tt != NULL) {
        free(*tt++);
    }

    free(tokens);

    printf("No prob");

    return 0;
}
