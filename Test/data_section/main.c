#include <stdio.h>

static void data_section(void);

static void test_character(void);

int main(void)
{
    data_section();
    test_character();

    puts("No prob");

    return 0;
}

static void data_section(void)
{
    const char* str1 = "Hi";
    const char* str2 = "Hi";

    printf("adr of str1: %p\n", (void*)str1);
    printf("adr of str2: %p\n", (void*)str2);
}

static void test_character(void)
{
    char str1[20] = "C is funny";
    char* p_str1 = str1;
    char** pp_str1 = &p_str1;

    char str2[20] = "C++";
    char* p_str2 = str2;
    char** pp_str2 = &p_str2;

    **pp_str1 = **pp_str2;

    printf("%s\n", str1);
}
