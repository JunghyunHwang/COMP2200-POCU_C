#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "todo_list.h"

void test_add_todo_list(todo_list_t* todo_list);

void test_complete_todo(todo_list_t* todo_list);

void test_peek_or_null(todo_list_t* todo_list);

void test_same_priority(void);

void test_test_same_priority(void);

void test_max_size_zero(void);

void print_todo_list(todo_list_t* todo_list);

void official_test(void);

int main(void)
{
    todo_list_t todo_list = init_todo_list(3);
    test_add_todo_list(&todo_list);
    test_complete_todo(&todo_list);
    test_peek_or_null(&todo_list);
    finalize_todo_list(&todo_list);

    test_test_same_priority();

    official_test();

    test_same_priority();

    test_max_size_zero();

    /*
    todo_list_t todo_list = init_todo_list(3);
    test_add_todo_list(&todo_list);
    test_complete_todo(&todo_list);
    test_peek_or_null(&todo_list);
    finalize_todo_list(&todo_list);

    official_test();

    test_same_priority();

    test_max_size_zero();

    test_test_same_priority();
    */
    puts("No prob");

    return 0;
}

void print_todo_list(todo_list_t* todo_list)
{
    task_t* p_tasks;
    size_t task_count;
    size_t i;

    p_tasks = todo_list->tasks;
    task_count = (size_t)todo_list->count;

    printf("counts: %d\n", (int)task_count);
    puts("-------------");

    if (task_count == 0) {
        puts("=== empty task ===");
        return;
    }

    for (i = 0; i < task_count; ++i) {
        printf("%s: %d\n", p_tasks[i].task_name, (int)p_tasks[i].priority);
    }
    puts("===================");
}

void test_add_todo_list(todo_list_t* todo_list)
{
    assert(add_todo(todo_list, 3, "Play game"));
    assert(get_count(todo_list) == 1);

    assert(add_todo(todo_list, 1, "Study math"));
    assert(get_count(todo_list) == 2);

    assert(add_todo(todo_list, 2, "Workout"));
    assert(get_count(todo_list) == 3);

    /* Full of list */
    assert(false == add_todo(todo_list, 99, "Go to clud"));
    assert(get_count(todo_list) == 3);
}

void test_complete_todo(todo_list_t* todo_list)
{
    puts("=== test_complete_todo ===");
    task_t* p_tasks;
    p_tasks = todo_list->tasks;

    print_todo_list(todo_list);
    assert(get_count(todo_list) == 3);

    assert(complete_todo(todo_list));
    assert(get_count(todo_list) == 2);

    printf("address %p\n", (void*)p_tasks[2].task_name);
    printf("address %p\n", (void*)p_tasks[1].task_name);
    print_todo_list(todo_list);

    assert(complete_todo(todo_list));
    assert(get_count(todo_list) == 1);
    print_todo_list(todo_list);

    assert(complete_todo(todo_list));
    assert(get_count(todo_list) == 0);
    print_todo_list(todo_list);

    /* empty todo list */
    assert(false == complete_todo(todo_list));
    assert(is_empty(todo_list));
    puts("=======================");
}

void test_peek_or_null(todo_list_t* todo_list)
{
    puts("=== test_peek_or_null ===");
    print_todo_list(todo_list);

    test_add_todo_list(todo_list);
    print_todo_list(todo_list);

    assert(get_count(todo_list) == 3);
    assert(strcmp(peek_or_null(todo_list), "Play game") == 0);

    assert(get_count(todo_list) == 3);
    assert(strcmp(peek_or_null(todo_list), "Play game") == 0);
    complete_todo(todo_list);

    assert(get_count(todo_list) == 2);
    assert(strcmp(peek_or_null(todo_list), "Workout") == 0);
    complete_todo(todo_list);

    assert(get_count(todo_list) == 1);
    assert(strcmp(peek_or_null(todo_list), "Study math") == 0);
    complete_todo(todo_list);

    /* empty todo list */
    assert(get_count(todo_list) == 0);
    assert(peek_or_null(todo_list) == NULL);
    assert(is_empty(todo_list));
    puts("=======================");
}

void test_same_priority(void)
{
    todo_list_t todo_list = init_todo_list(3);

    assert(add_todo(&todo_list, 0, "meeting"));
    assert(add_todo(&todo_list, 0, "Watch 'Attack on titan'"));
    assert(add_todo(&todo_list, 0, "Play Horizon:zero dawn"));

    print_todo_list(&todo_list);

    assert(complete_todo(&todo_list));
    print_todo_list(&todo_list);

    assert(add_todo(&todo_list, 0, "Go to caffe"));
    print_todo_list(&todo_list);

    assert(complete_todo(&todo_list));
    print_todo_list(&todo_list);
    assert(add_todo(&todo_list, 1, "Go to PC caffe"));
    print_todo_list(&todo_list);

    assert(complete_todo(&todo_list));
    print_todo_list(&todo_list);

    finalize_todo_list(&todo_list);
}

void test_test_same_priority(void)
{
    todo_list_t todo_list = init_todo_list(3);

    assert(add_todo(&todo_list, 0, "Workout"));
    assert(add_todo(&todo_list, 0, "Watch 'Attack on titan'"));
    assert(add_todo(&todo_list, 0, "Go to school"));

    assert(strcmp(peek_or_null(&todo_list), "Workout") == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp(peek_or_null(&todo_list), "Watch 'Attack on titan'") == 0);
    assert(complete_todo(&todo_list));

    assert(add_todo(&todo_list, 0, "Go to caffe"));
    assert(strcmp(peek_or_null(&todo_list), "Go to school") == 0);

    assert(add_todo(&todo_list, 1, "Go to PC caffe"));
    assert(strcmp(peek_or_null(&todo_list), "Go to PC caffe") == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp(peek_or_null(&todo_list), "Go to school") == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp(peek_or_null(&todo_list), "Go to caffe") == 0);
    assert(complete_todo(&todo_list));

    assert(NULL == peek_or_null(&todo_list));

    finalize_todo_list(&todo_list);
}

void test_max_size_zero(void)
{
    todo_list_t todo_list = init_todo_list(0);

    assert(is_empty(&todo_list));
    assert(false == add_todo(&todo_list, 10, "A"));
    assert(get_count(&todo_list) == 0);
    assert(false == complete_todo(&todo_list));

    finalize_todo_list(&todo_list);
}

void official_test(void)
{
    todo_list_t todo_list = init_todo_list(9);

    assert(is_empty(&todo_list));

    assert(add_todo(&todo_list, 10, "A"));
    assert(add_todo(&todo_list, 22, "B"));
    assert(add_todo(&todo_list, 3, "C"));
    assert(add_todo(&todo_list, 34, "D"));
    assert(add_todo(&todo_list, 20, "E"));
    assert(add_todo(&todo_list, 59, "F"));
    assert(add_todo(&todo_list, 60, "G"));
    assert(add_todo(&todo_list, 55, "H"));
    assert(add_todo(&todo_list, 22, "I"));

    print_todo_list(&todo_list);
    assert(get_count(&todo_list) == 9);
    assert(!is_empty(&todo_list));

    assert(!add_todo(&todo_list, -5, "J"));

    assert(get_count(&todo_list) == 9);

    assert(strcmp("G", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp("F", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp("H", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp("D", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp("B", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp("I", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp("E", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp("A", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(strcmp("C", peek_or_null(&todo_list)) == 0);
    assert(complete_todo(&todo_list));

    assert(is_empty(&todo_list));
    assert(!complete_todo(&todo_list));
    finalize_todo_list(&todo_list);
}
