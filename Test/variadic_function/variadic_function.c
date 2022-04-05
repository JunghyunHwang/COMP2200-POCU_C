#include <stdio.h>
#include <assert.h>
#include "variadic_function.h"

void sum_by_access_pointer(int a, int b)
{
    int a_value;
    int b_value;
    int result;
    char* p;

    p = (char*)&a;
    a_value = *(int*)p;

    printf("input a address: %p\n", (void*)p);
    MOVE_POINTER(p, a);
    printf("After p address: %p\n", (void*)p);

    b_value = *(int*)p;

    result = a_value + b_value;
    assert(result == a + b);

    printf("result: %d\n", result);
}
