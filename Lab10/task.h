#ifndef TASK_H
#define TASK_H

typedef struct task {
    char* task_name;
    int32_t priority;
    struct task* next;
} task_t;

#endif /* TASK_H */
