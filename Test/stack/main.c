#include <stdio.h>
#include <assert.h>

#include "stack.h"

int main(void)
{
    stack_t stack = init_stack(5);
    size_t i;

    for (i = 0; i < 5; ++i) {
        assert((stack.node)[i] == -1);
    }

    assert(push(&stack, 2));
    assert(push(&stack, 1));
    assert(push(&stack, 5));
    assert(push(&stack, 4));
    assert(push(&stack, 3));
    assert(!push(&stack, 7));

    assert(get_index(&stack, 3) == (int)(stack.count - 1));

    assert(pop(&stack));
    assert(get_index(&stack, 4) == (int)(stack.count - 1));

    assert(pop(&stack));
    assert(get_index(&stack, 5) == (int)(stack.count - 1));

    puts("No prob");

    return 0;
}
