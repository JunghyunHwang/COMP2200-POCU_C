#ifndef TODO_LIST_H
#define TODO_LIST_H

#include <stdint.h>
#include <stdbool.h>

typedef struct task {
    char* task_name;
    int32_t priority;
} task_t;

typedef struct todo_list {
    work_t** plist;
    int dummy;
    int max;
} todo_list_t;

#endif /* TODO_LIST_H */