#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "document_analyer.h"

#define DELIM_SENTENCE ".!?"

int main(void)
{
    int result = load_document("test.txt");
    const char*** paragraph = get_paragraph_or_null(0);

    assert(result == TRUE);
    assert(strcmp(paragraph[0][0], "Hi") == 0);

    dispose();

    puts("No prob");

    return 0;
}
