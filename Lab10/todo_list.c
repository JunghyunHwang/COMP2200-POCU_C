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

    todo_list->tasks = NULL;
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

    puts("====================");
    puts("Start dispose memory");

    p_task_node = todo_list->tasks;

    while (p_task_node != NULL) {
        task_t* tmp = p_task_node->next;

        free(p_task_node->task_name);
        free(p_task_node);

        p_task_node = tmp;
    }

    puts("Complete dispose memory");
    puts("=======================");
}

bool add_todo(todo_list_t* todo_list, const int32_t priority, const char* task)
{
    task_t** pp_task_node;
    task_t* new_task;
    size_t task_name_length;
    char* task_name;

    if (priority < 0) {
        return false;
    } else if (todo_list->dummy >= (int)todo_list->max) {
        return false;
    }

    pp_task_node = &todo_list->tasks;

    task_name_length = strlen(task);
    task_name = malloc(task_name_length + 1);
    memcpy(task_name, task, task_name_length);
    *(task_name + task_name_length) = '\0';

    while (*pp_task_node != NULL) {
        if ((*pp_task_node)->priority < priority) {
            break;
        }

        pp_task_node = &(*pp_task_node)->next;
    }

    new_task = malloc(sizeof(task_t));
    new_task->task_name = task_name;
    new_task->priority = priority;

    new_task->next = *pp_task_node;
    *pp_task_node = new_task;

    ++todo_list->dummy;

    return true;
}

bool complete_todo(todo_list_t* todo_list)
{
    task_t** pp_task_node;

    if (todo_list->dummy == 0) {
        return false;
    }

    pp_task_node = &todo_list->tasks;

    task_t* tmp = (*pp_task_node)->next;
    free((*pp_task_node)->task_name);
    free(*pp_task_node);

    *pp_task_node = tmp;

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
