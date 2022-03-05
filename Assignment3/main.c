#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "document_analyzer.h"

#define DELIM_SENTENCE ".!?"

void official_test(void)
{
    const char** sentence = NULL;
    const char*** paragraph = NULL;
    size_t i = 0U;
    size_t j = 0U;

    assert(load_document("doesntexist.txt") == FALSE);
    assert(load_document("input.txt") == TRUE);

    assert(get_total_word_count() == 58U);
    assert(get_total_sentence_count() == 9U);
    assert(get_total_paragraph_count() == 3U);

    assert(get_paragraph_or_null(3) == NULL);

    paragraph = get_paragraph_or_null(1);
    assert(paragraph != NULL);
    assert(get_paragraph_word_count(paragraph) == 14);
    assert(get_paragraph_sentence_count(paragraph) == 2);

    assert(strcmp(paragraph[i][j++], "This") == 0);
    assert(strcmp(paragraph[i][j++], "is") == 0);
    assert(strcmp(paragraph[i][j++], "the") == 0);
    assert(strcmp(paragraph[i][j++], "second") == 0);
    assert(strcmp(paragraph[i++][j++], "paragraph") == 0);

    j = 0U;

    assert(strcmp(paragraph[i][j++], "I") == 0);
    assert(strcmp(paragraph[i][j++], "wonder") == 0);
    assert(strcmp(paragraph[i][j++], "how") == 0);
    assert(strcmp(paragraph[i][j++], "many") == 0);
    assert(strcmp(paragraph[i][j++], "sentences") == 0);
    assert(strcmp(paragraph[i][j++], "you") == 0);
    assert(strcmp(paragraph[i][j++], "will") == 0);
    assert(strcmp(paragraph[i][j++], "see") == 0);
    assert(strcmp(paragraph[i][j++], "here") == 0);

    assert(get_sentence_or_null(0, 10) == NULL);

    sentence = get_sentence_or_null(0, 2);
    assert(sentence != NULL);
    assert(get_sentence_word_count(sentence) == 4);

    i = 0U;

    assert(strcmp(sentence[i++], "Is") == 0);
    assert(strcmp(sentence[i++], "this") == 0);
    assert(strcmp(sentence[i++], "too") == 0);
    assert(strcmp(sentence[i++], "easy") == 0);

    assert(print_as_tree("output.txt") == TRUE);

    dispose();
}

void test_empty_text(void)
{
    assert(load_document("empty.txt") == TRUE);
    assert(load_document("hello.txt") == FALSE);

    assert(get_total_word_count() == 0U);
    assert(get_total_sentence_count() == 0U);
    assert(get_total_paragraph_count() == 0U);

    assert(get_paragraph_or_null(0) == NULL);
    assert(get_sentence_or_null(0, 0) == NULL);
    assert(print_as_tree("output.txt") == FALSE);

    dispose();
}

void test_not_loaded(void)
{
    assert(get_paragraph_or_null(0) == NULL);
    assert(get_sentence_or_null(0, 0) == NULL);
    assert(get_total_word_count() == 0U);
    assert(get_total_sentence_count() == 0U);
    assert(get_total_paragraph_count() == 0U);
    assert(load_document("hello.txt") == FALSE);
    assert(print_as_tree("output_document.txt") == FALSE);

    assert(load_document("document.txt") == TRUE);

    assert(print_as_tree("out_document.txt") == TRUE);

    dispose();
}

void official_test2(void)
{
    size_t total_word_count;
    size_t total_sentence_count;
    size_t total_paragraph_count;

    assert(load_document("santa.txt") == TRUE);

    total_word_count = get_total_word_count();
    total_sentence_count = get_total_sentence_count();
    total_paragraph_count = get_total_paragraph_count();

    printf("Total paragraph count: %d\n", total_paragraph_count);
    printf("Total sentence count: %d\n", total_sentence_count);
    printf("Total word count: %d\n", total_word_count);

    assert(total_word_count == 45U);
    assert(total_sentence_count == 10U);
    assert(total_paragraph_count == 3U);

    assert(print_as_tree("out_santa.txt") == TRUE);

    dispose();
}

void load_two_files(void)
{
    /*
        santa 로드 -> empty 로드 -> print_as_tree
        이러면 내코드는 아무것도 출력 x
        total_word_count = get_total_word_count();
        total_sentence_count = get_total_sentence_count();
        total_paragraph_count = get_total_paragraph_count();

        printf("Total paragraph count: %d\n", total_paragraph_count);
        printf("Total sentence count: %d\n", total_sentence_count);
        printf("Total word count: %d\n", total_word_count);
    */
    size_t total_word_count;
    size_t total_sentence_count;
    size_t total_paragraph_count;

    assert(load_document("input.txt") == TRUE);
    assert(load_document("doesntexist.txt") == FALSE);
    assert(load_document("empty.txt") == TRUE);
    /*assert(load_document("santa.txt") == TRUE);*/
    
    assert(print_as_tree("output.txt") == TRUE);

    dispose();
}

int main(void)
{
    /*
    
    */
    puts("=== Start test official ===");
    official_test();
    puts("=== Complete test official ===");

    puts("=== Start test not loaded ===");
    test_not_loaded();
    puts("=== Complete test not loaded ===");

    puts("=== Start test official2 ===");
    official_test2();
    puts("=== Complete test official2 ===");
    
    puts("=== Start test empty ===");
    test_empty_text();
    puts("=== Complete tset empty ===");

    puts("=== Start test load_twofiles ===");
    load_two_files();
    puts("=== Complete test load_twofiles ===");

    puts("No prob");

    return 0;
}
