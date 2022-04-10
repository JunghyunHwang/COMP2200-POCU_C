#include <stdio.h>
#include <assert.h>
#include <stdarg.h>

#include "variadic_function.h"

int sum_by_parameter_pointer(int a, int b)
{
    int a_value;
    int b_value;
    int result;
    char* p;

    p = (char*)&a;
    a_value = *(int*)p;

    MOVE_POINTER(p, a);

    b_value = *(int*)p;
    result = a_value + b_value;

    assert(result == a + b);

    return result;
}

int add_sum(int count, ...)
{
    va_list ap;
    int result = 0;
    size_t i;

    va_start(ap, count);
    {
        for (i = 0; i < (size_t)count; ++i) {
            int tmp = va_arg(ap, int);
            result += tmp;
        }
    }
    va_end(ap);

    return result;
}
