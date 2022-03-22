#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "todo_list.h"

todo_list_t init_todo_list(size_t max_size)
{
    todo_list_t result;
    todo_list_t* todo_list;

    puts("====================");
    puts("Start init todo list");

    todo_list = malloc(sizeof(todo_list_t));

    todo_list->tasks = malloc(sizeof(task_t) * max_size);
    todo_list->dummy = 0;
    todo_list->max = max_size;

    result = *todo_list;

    free(todo_list);

    puts("Complete init todo list");
    puts("=======================");

    return result;
}

void finalize_todo_list(todo_list_t* todo_list)
{
    task_t* p_task_node;
    size_t i;

    puts("====================");
    puts("Start dispose memory");

    p_task_node = todo_list->tasks;

    for (i = 0; i < (size_t)todo_list->dummy; ++i) {
        free(p_task_node[i].task_name);
    }

    p_task_node = NULL;

    free(todo_list->tasks);

    puts("Complete dispose memory");
    puts("=======================");
}

bool add_todo(todo_list_t* todo_list, const int32_t priority, const char* task)
{
    task_t* p_task_node;
    task_t new_task;
    char* task_name;
    size_t task_name_length;
    size_t i;
    size_t insert_index;

    if (priority < 0) {
        return false;
    } else if (todo_list->dummy >= (int)todo_list->max) {
        return false;
    }

    p_task_node = todo_list->tasks;

    task_name_length = strlen(task);
    task_name = malloc(task_name_length + 1);
    memcpy(task_name, task, task_name_length);
    *(task_name + task_name_length) = '\0';

    new_task.task_name = task_name;
    new_task.priority = priority;

    for (i = 0; i < (size_t)todo_list->dummy; ++i) {
        if (p_task_node[i].priority < (size_t)priority) {
            break;
        }
    }

    insert_index = i;

    for (; insert_index < (size_t)todo_list->dummy + 1; ++insert_index) {
        task_t tmp = p_task_node[insert_index];
        p_task_node[insert_index] = new_task;
        new_task = tmp;
    }

    ++todo_list->dummy;

    return true;
}

bool complete_todo(todo_list_t* todo_list)
{
    task_t* p_task_node;
    size_t i;

    if (todo_list->dummy <= 0) {
        return false;
    }

    p_task_node = todo_list->tasks;

    free(p_task_node[0].task_name);

    for (i = 0; i < (size_t)todo_list->dummy - 1; ++i) {
        p_task_node[i] = p_task_node[i + 1];
    }

    --todo_list->dummy;

    return true;
}

const char* peek_or_null(const todo_list_t* todo_list)
{
    task_t* p_task_node;

    if (todo_list->dummy == 0) {
        return NULL;
    }

    p_task_node = todo_list->tasks;

    return (const char*)p_task_node->task_name;
}

size_t get_count(const todo_list_t* todo_list)
{
    return (size_t)todo_list->dummy;
}

bool is_empty(const todo_list_t* todo_list)
{
    return todo_list->dummy == 0 ? true : false;
}
