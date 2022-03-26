#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "todo_list.h"

#define INVALID_PRIORITY (-1)
#define INVALID_TASK_NAME ("")
#define MAX_TASK_LENGTH (64)

todo_list_t init_todo_list(size_t max_size)
{
    todo_list_t todo_list;
    memory_queue_t memory;

    memory = malloc(sizeof(task_t) * max_size + (sizeof(char) * 64) * max_size);
    memory.front = 0;
    memory.back = 0;
    memory.count = 0;
    memory.max = sizeof(task_t) * max_size + (sizeof(char) * 64) * max_size;

    if (memory.max - memory.count >= sizeof(task_t) * max_size) {
        todo_list.tasks = memory;
    }

    todo_list.tasks = 

    task_t* p_tasks = todo_list.tasks;

    todo_list.dummy = 0;
    todo_list.max = max_size;

    for (size_t i = 0; i < max_size; ++i) {
        p_tasks[i].task_name = "";
        p_tasks[i].priority = INVALID_PRIORITY;
    }

    return todo_list;
}

void finalize_todo_list(todo_list_t* todo_list)
{
    task_t* p_tasks = todo_list->tasks;

    for (size_t i = 0; i < (size_t)todo_list->dummy; ++i) {
        free(p_tasks[i].task_name);
    }

    free(p_tasks);
}

bool add_todo(todo_list_t* todo_list, const int32_t priority, const char* task)
{
    if (priority <= INVALID_PRIORITY) {
        return false;
    } else if (todo_list->dummy >= (int)todo_list->max) {
        return false;
    }
    
    size_t task_name_length = strlen(task);
    char* task_name = malloc(task_name_length + 1);

    memcpy(task_name, task, task_name_length);
    *(task_name + task_name_length) = '\0';

    task_t new_task;
    new_task.task_name = task_name;
    new_task.priority = priority;

    task_t* p_tasks = todo_list->tasks;
    size_t task_count = (size_t)todo_list->dummy;
    size_t i;

    for (i = 0; i < task_count + 1; ++i) {
        if (p_tasks[i].priority < new_task.priority) {
            break;
        }
    }

    task_t tmp;
    for (; i < task_count + 1; ++i) {
        tmp = p_tasks[i];
        p_tasks[i] = new_task;
        new_task = tmp;
    }

    ++todo_list->dummy;

    return true;
}

bool complete_todo(todo_list_t* todo_list)
{
    if (todo_list->dummy <= 0) {
        return false;
    }

    task_t* p_tasks = todo_list->tasks;
    size_t task_count = (size_t)todo_list->dummy;

    free(p_tasks[0].task_name);

    for (size_t i = 0; i < task_count - 1; ++i) {
        p_tasks[i] = p_tasks[i + 1];
    }

    p_tasks[task_count - 1].task_name = INVALID_TASK_NAME;
    p_tasks[task_count - 1].priority = INVALID_PRIORITY;

    --todo_list->dummy;

    return true;
}

const char* peek_or_null(const todo_list_t* todo_list)
{
    if (todo_list->dummy == 0) {
        return NULL;
    }

    task_t* p_tasks = todo_list->tasks;

    return (const char*)p_tasks[0].task_name;
}

size_t get_count(const todo_list_t* todo_list)
{
    return (size_t)todo_list->dummy;
}

bool is_empty(const todo_list_t* todo_list)
{
    return (todo_list->dummy == 0);
}
