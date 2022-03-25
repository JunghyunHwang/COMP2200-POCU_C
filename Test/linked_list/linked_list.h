#ifndef LINKED_LIST_H
#define LINKED_LIST_H

typedef struct node {
    int value;
    struct node* next;
} node_t;

void insert_front(node_t** phead, int value);

void insert_sorted(node_t** phead, int value);

void print_node(node_t* phead);

void destroy(node_t* phead);

#endif /* LINKED_LIST_H */
