#include <stdio.h>
#include <assert.h>

#include "document_analyer.h"

#define DELIM_SENTENCE ".!?"

int main(void)
{
    int result = load_document("test.txt");
    const char*** paragraph = get_paragraph_or_null(0);
    size_t sentence_count;
    size_t word_count;
    size_t i;
    size_t j;

    assert(result == TRUE);
    
    printf("Total paragraph count: %lu\n", get_total_paragraph_count());
    printf("Total sentence count: %lu\n", get_total_sentence_count());
    printf("Total word count: %lu\n", get_total_word_count());

    printf("%s\n", paragraph[0][0]);
/*

    printf("Paragraph0 sentence count: %lu\n", sentence_count);
    printf("Paragraph0 word count: %lu\n", word_count);
    puts("============result============");

    for (i = 0; i <= sentence_count; ++i) {
        for (j = 0; j <= word_count; ++j) {
            printf("%s\n", paragraph[i][j]);
        }
    }
*/
    dispose();

    return 0;
}
