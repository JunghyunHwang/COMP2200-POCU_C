#include <stdio.h>
#include <assert.h>

#include "document_analyer.h"

int main(void)
{
    int result = load_document("infput.txt");
    assert(result == FALSE);

    result = load_document("input.txt");
    assert(result == TRUE);

    puts("====================");
    puts("No prob");

    return 0;
}
