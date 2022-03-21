#include <stdio.h>
#include <stdlib.h>

#include "todo_list.h"

todo_list_t init_todo_list(size_t max_size)
{
    todo_list_t* todo_list;

    todo_list = malloc(todo_list_t);

    todo_list->plist = malloc(work_t);
    todo_list->dummy = 0;
    todo_list->max = max_size;

    return *todo_list;
}

void finalize_todo_list(todo_list_t* todo_list);

bool add_todo(todo_list_t* todo_list, const int32_t priority, const char* task);

bool complete_todo(todo_list_t* todo_list);

const char* peek_or_null(const todo_list_t* todo_list);

size_t get_count(const todo_list_t* todo_list);

bool is_empty(const todo_list_t* todo_list);
