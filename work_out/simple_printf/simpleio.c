#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include "simpleio.h"

static void print_int_recursive(unsigned int val);
static void print_int(unsigned int val);
static void push_num(list_t* stack, int val);
static int pop_num(list_t* stack);

void print_simple(const char* format, ...)
{
    va_list ap;

    va_start(ap, format);
    {
        while (*format != '\0') {
            const char* str;
            unsigned int val;

            switch (*format) {
            case 's':
                str = va_arg(ap, const char*);

                while (*str != '\0') {
                    putchar(*str++);
                }
                break;
            case 'c':
                val = va_arg(ap, unsigned int);
                putchar(val);
                break;
            case 'd':
                val = va_arg(ap, unsigned int);
                print_int(val);
                break;
            case '\n':
                putchar('\n');
                break;
            default:
                putchar(*format);
                break;
            }

            ++format;
        }
    }
    va_end(ap);
}

static void push_num(list_t* stack, int val)
{
    stack->node[stack->count++] = val;
}

static int pop_num(list_t* stack)
{
    return stack->node[--stack->count];
}

static void print_int(unsigned int val)
{
    list_t stack;
    stack.count = 0;

    if (val == 0) {
        putchar('0');
        return;
    }

    while (val != 0) {
        push_num(&stack, val % 10);
        val /= 10;
    }

    while (stack.count > 0) {
        putchar('0' + pop_num(&stack));
    }
}
