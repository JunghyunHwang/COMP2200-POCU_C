#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include "tokenize.h"

void official_test(void)
{
    const char* str = "I like cookies. Do you like cookies? Cookies are good!";
    char** tokens = tokenize_malloc(str, " ?!.");
    char** tt = tokens;

    assert(strcmp(*tt++, "I") == 0);
    assert(strcmp(*tt++, "like") == 0);
    assert(strcmp(*tt++, "cookies") == 0);
    assert(strcmp(*tt++, "Do") == 0);
    assert(strcmp(*tt++, "you") == 0);
    assert(strcmp(*tt++, "like") == 0);
    assert(strcmp(*tt++, "cookies") == 0);
    assert(strcmp(*tt++, "Cookies") == 0);
    assert(strcmp(*tt++, "are") == 0);
    assert(strcmp(*tt++, "good") == 0);
    assert(*tt == NULL);

    tt = tokens;
    while (*tt != NULL) {
        free(*tt++);
    }

    free(tokens);
}

void test_no_delim(void)
{
    const char* str = "I like cookies. Do you like cookies? Cookies are good!";
    char** tokens = tokenize_malloc(str, "");
    char** tt = tokens;

    assert(strcmp(*tt++, "I like cookies. Do you like cookies? Cookies are good!") == 0);
    assert(*tt == NULL);

    tt = tokens;
    while (*tt != NULL) {
        free(*tt++);
    }

    free(tokens);
}

void test_no_str(void)
{
    const char* str = "";
    char** tokens = tokenize_malloc(str, "., !");
    char** tt = tokens;

    assert(*tt == NULL);

    tt = tokens;
    free(*tt);

    free(tokens);
}

void test_no_matched_delim(void)
{
    const char* str = "I like cookies. Do you like cookies? Cookies are good!";
    char** tokens = tokenize_malloc(str, "*");
    char** tt = tokens;

    assert(strcmp(*tt++, "I like cookies. Do you like cookies? Cookies are good!") == 0);
    assert(*tt == NULL);

    tt = tokens;
    while (*tt != NULL) {
        free(*tt++);
    }

    free(tokens);
}

void too_many_tokenized(void)
{
    const char* str = "I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I I ";
    char** tokens = tokenize_malloc(str, " ");
    char** tt = tokens;

    while (*tt != NULL) {
        assert(*(*tt) == 'I');
        tt++;
    }

    tt = tokens;
    
    while (*tt != NULL) {
        free(*tt++);
    }

    free(tokens);
}

void check_multi_pointer(void)
{
    char** paragraph[3];
    char* sentence1[3];
    char* sentence2[3];
    char* sentence3[3];

    char str1[] = "Hi";
    char str2[] = "my name is";
    char str3[] = "Ja_Hwang";
    char str4[] = "Hi, there";
    char str5[] = "my name is";
    char str6[] = "Baro";
    char str7[] = "Hi";
    char str8[] = "you can call me";
    char str9[] = "Junseok";
    size_t i;
    size_t sentence_count;

    sentence1[0] = str1;
    sentence1[1] = str2;
    sentence1[2] = str3;

    sentence2[0] = str4;
    sentence2[1] = str5;
    sentence2[2] = str6;

    sentence3[0] = str7;
    sentence3[1] = str8;
    sentence3[2] = str9;

    paragraph[0] = sentence1;
    paragraph[1] = sentence2;
    paragraph[2] = sentence3;

    sentence_count = sizeof(paragraph) / sizeof(char*);

    printf("Paragraph size: %d\n", sizeof(paragraph)); /* 8 */
    printf("Sentences count: %d\n", sentence_count);
}

int main(void)
{
    /*
    puts("=====Start official_test=====");
    official_test();
    puts("=====Complete official_test=====\n");

    puts("=====Start no_delim=====");
    test_no_delim();
    puts("=====Complete no_delim=====\n");

    puts("=====Start no_str=====");
    test_no_str();
    puts("=====Complete no_str=====\n");

    puts("=====Start no_matched_delim=====");
    test_no_matched_delim();
    puts("=====Complete no_matched_delim=====\n");

    puts("=====Start too_many_tokenized=====");
    too_many_tokenized();
    puts("=====Complete too_many_tokenized=====\n");
    */

    check_multi_pointer();

    puts("No prob");

    return 0;
}
