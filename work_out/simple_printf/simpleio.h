#ifndef SIMPLEIO_H
#define SIMPLEIO_H

typedef struct list {
    int count;
    int node[100];
} list_t;

void print_simple(const char* format, ...);

#endif /* SIMPLEIO_H */
