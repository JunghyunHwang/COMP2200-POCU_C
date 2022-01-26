#include <stdio.h>
#include <assert.h>
#include <string.h>

#include "my_string.h"

void test_case1(void) {
    const char* str = "ddadday";
    int index = index_of(str, "dad");
    assert(index == 1);
}

void test_case2 (void)
{
    /*
    1. reverse()
    */
    {
        char empty[] = "";
        char empty_reverse[] = "";

        char one_char[] = "a";
        char one_char_reverse[] = "a";

        char even_num_chars[] = "able";
        char even_num_chars_reverse[] = "elba";

        char odd_num_chars[] = "apple";
        char odd_num_chars_reverse[] = "elppa";

        reverse(empty);
        assert(strcmp(empty, empty_reverse) == 0);

        reverse(one_char);
        assert(strcmp(one_char, one_char_reverse) == 0);

        reverse(even_num_chars);
        assert(strcmp(even_num_chars, even_num_chars_reverse) == 0);

        reverse(odd_num_chars);
        assert(strcmp(odd_num_chars, odd_num_chars_reverse) == 0);
    }
    
    /*
        2. index_of()
    */
    {
        char str[] = "I am a boy and you are a girl, we like banana";
        char empty_str[] = "";
        char empty[] = "";
        char one_char_word1[] = "a";
        char one_char_word2[] = "m";
        char mult_chars_word1[] = "am";
        char mult_chars_word2[] = "an";
        char word_not_found1[] = "band";
        char word_not_found2[] = "z";
        char word_not_found3[] = "your";
        int index;

        index = strstr(str, empty) - str;
        assert(index_of(str, empty) == index);

        assert(index_of(empty_str, empty) == 0);

        index = strstr(str, one_char_word1) - str;
        assert(index_of(str, one_char_word1) == index);

        index = strstr(str, one_char_word2) - str;
        assert(index_of(str, one_char_word2) == index);

        assert(index_of(str, word_not_found1) == -1);

        assert(index_of(str, word_not_found2) == -1);

        assert(index_of(str, word_not_found3) == -1);
    }

    /*
        3. reverse_by_words()
    */
    {
        char empty[] = "";
        char empty_reverse[] = "";

        char one_word[] = "a";
        char one_word_reverse[] = "a";

        char mult_words[] = "I am a boy and you are a girl";
        char mult_words_reverse[] = "I ma a yob dna uoy era a lrig";
        
        reverse_by_words(empty);
        assert(strcmp(empty, empty_reverse) == 0);

        reverse_by_words(one_word);
        assert(strcmp(one_word, one_word_reverse) == 0);

        reverse_by_words(mult_words);
        assert(strcmp(mult_words, mult_words_reverse) == 0);
    }

    /*
        4. tokenize()
    */
    {
        const char* one_delim = " ";
        const char* mult_delim = " ,!";
        char str_strtok[] = "I am a boy, and you are a girl!";
        char str_tokenize[] = "I am a boy, and you are a girl!";

        char str_strtok2[] = "!,I    am  a boy,  and    you   are a   girl!";
        char str_tokenize2[] = "!,I    am  a boy,  and    you   are a   girl!";
        char* token_strtok = strtok(str_strtok, one_delim);
        char* token_tokenize = tokenize(str_tokenize, one_delim);

        while (token_strtok != NULL && token_tokenize != NULL) {
            assert(strcmp(token_strtok, token_tokenize) == 0);
            token_strtok = strtok(NULL, one_delim);
            token_tokenize = tokenize(NULL, one_delim);
        }

        token_strtok = strtok(str_strtok2, mult_delim);
        token_tokenize = tokenize(str_tokenize2, mult_delim);

        while (token_strtok != NULL && token_tokenize != NULL) {
            assert(strcmp(token_strtok, token_tokenize) == 0);
            token_strtok = strtok(NULL, mult_delim);
            token_tokenize = tokenize(NULL, mult_delim);
        }
    }

    /*
        5. reverse_tokenize()
    */
    {
        const char* one_delim = " ";
        const char* mult_delim = " ,!";
        char str_strtok[] = "I am a boy, and you are a girl!";
        char str_tokenize[] = "I am a boy, and you are a girl!";

        char str_strtok2[] = "!,I    am  a boy,  and    you   are a   girl!";
        char str_tokenize2[] = "!,I    am  a boy,  and    you   are a   girl!";
        char* token_strtok = strtok(str_strtok, one_delim);
        char* token_tokenize = reverse_tokenize(str_tokenize, one_delim);
        if (token_strtok != NULL) {
            reverse(token_strtok);
        }

        while (token_strtok != NULL && token_tokenize != NULL) {
            puts(token_strtok);
            puts(token_tokenize);
            assert(strcmp(token_strtok, token_tokenize) == 0);
            token_strtok = strtok(NULL, one_delim);
            if (token_strtok != NULL) {
                reverse(token_strtok);
            }
            token_tokenize = reverse_tokenize(NULL, one_delim);
        }

        token_strtok = strtok(str_strtok2, mult_delim);
        reverse(token_strtok);
        token_tokenize = reverse_tokenize(str_tokenize2, mult_delim);

        while (token_strtok != NULL && token_tokenize != NULL) {
            puts(token_strtok);
            puts(token_tokenize);
            assert(strcmp(token_strtok, token_tokenize) == 0);
            token_strtok = strtok(NULL, mult_delim);
            if (token_strtok != NULL) {
                reverse(token_strtok);
            }
            token_tokenize = reverse_tokenize(NULL, mult_delim);
        }
    }
    puts("End");
}

void my_test(void) {
    const char* str1 = "Give me the beat, I ride it like a jetski ";
    const char* str2 = "?!?!?!!";
    char str_cpy1[42];
    char str_cpy2[8];
    const char* token;

    strncpy(str_cpy1, str1, 41);
    str_cpy1[41] = '\0';
    printf("%s \n", str_cpy1);

    token = tokenize(str_cpy1, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");
    token = tokenize(NULL, " ,");

    strncpy(str_cpy2, str2, 7);
    str_cpy2[7] = '\0';

    token = tokenize(str_cpy2, "?");
    printf("%s\n", token);
    assert(token == str_cpy2 + 1);
    assert(strcmp(token, "!") == 0);

    printf("my_test clear");
}

int main(void)
{
    my_test();
    test_case2();

    printf("No prob");

    return 0;
}
