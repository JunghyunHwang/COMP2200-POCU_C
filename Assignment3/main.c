#include <stdio.h>
#include <assert.h>

#define DELIM_SENTENCE ".!?"
#include "document_analyer.h"

int main(void)
{
    /*
    int result = load_document("infput.txt");
    assert(result == FALSE);

    result = load_document("input.txt");
    assert(result == TRUE);
    */
    char* delim = DELIM_SENTENCE;

    while (*delim != '\0') {
        printf("%c", *delim);
        ++delim;
    }

    return 0;
}
