#ifndef STACK_H
#define STACK_H

#define TRUE (1)
#define FALSE (0)

typedef struct {
    int* node;
    size_t max;
    size_t count;
} stack_t;

stack_t init_stack(size_t max);

int push(stack_t* stack, int value);

int pop(stack_t* stack);

int get_index(stack_t* stack, int value);

void finalize_stack(stack_t* stack);

#endif /* STACK_H */
