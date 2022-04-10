#include <stdio.h>
#include <stdlib.h>

#include "stack.h"

#define NONVALUE (-1)

stack_t init_stack_malloc(size_t max)
{
    stack_t stack;
    size_t i;

    stack.node = malloc(sizeof(int) * max);

    for (i = 0; i < max; ++i) {
        (stack.node)[i] = NONVALUE;
    }

    stack.max = max;
    stack.count = 0;

    return stack;
}

int get_index(stack_t* stack, int value)
{
    int result;
    int* p_node;
    size_t i;

    result = NONVALUE;

    if (stack->count <= 0) {
        return result;
    }

    p_node = stack->node;

    for (i = stack->count; i >= 0; --i) {
        if (value == p_node[i]) {
            result = i;
            break;
        }
    }

    return result;
}

int push(stack_t* stack, int value)
{
    int* p_node;

    if (stack->count >= stack->max) {
        return FALSE;
    }

    p_node = stack->node;

    p_node[stack->count++] = value;

    return TRUE;
}

int pop(stack_t* stack)
{
    int* p_node;

    if (stack->count <= 0) {
        return FALSE;
    }

    p_node = stack->node;

    p_node[stack->count--] = NONVALUE;

    return TRUE;
}

void finalize_stack(stack_t* stack)
{
    free(stack->node);
    stack->node = NULL;
}
