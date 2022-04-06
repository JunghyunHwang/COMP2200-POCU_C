#include <stdio.h>

#include "variadic_function.h"

static void test_simple_variadic(void);
static void test_wrong_access(void);

int main(void)
{
    test_simple_variadic();
    test_wrong_access();

    puts("No prob");
    return 0;
}

static void test_simple_variadic(void)
{
    int result = sum_by_parameter_pointer(5, 3);
    printf("Access by pointer result: %d\n", result);
}

static void test_wrong_access(void)
{
    int result = add_sum(5, 1, 2, 3, 4, 5);
    printf("Variadic access result: %d\n", result);
}
