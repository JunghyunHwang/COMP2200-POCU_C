#include <stdio.h>
#include "tokenize.h"

int main(void)
{
    char* str = "Bitch don't kill my vibe.";
    char** tokenized;
    char** p_token;

    printf("%s\n", str);
    tokenized = tokenize_malloc(str, " ");
    p_token = tokenized;

    while (*p_token != NULL) {
        printf("%s\n", *p_token++);
    }

    destroy(tokenized);

    puts("No prob");

    return 0;
}
