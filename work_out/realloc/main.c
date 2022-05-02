#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define LENGTH (5);

int main(void)
{
    size_t i = 0;
    char* sentence = NULL;
    const char* s = "I woke up in the morning.";
    const char* p = s;
    size_t size = LENGTH;
    sentence = malloc(size + 1);

    while (*p != '\0') {
        if (i >= size) {
            size += LENGTH;
            realloc(sentence, size + 1);
        }

        sentence[i++] = *p++;
    }

    sentence[i] = '\0';

    p = sentence;
    while (*p != '\0') {
        putchar(*p++);
    }

    free(sentence);
    sentence = NULL;

    puts("No prob");

    return 0;
}
