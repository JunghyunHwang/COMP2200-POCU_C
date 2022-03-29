#include <stdio.h>
#include <stdlib.h>

#include "linked_list.h"

void insert_front(node_t** phead, int value)
{
    node_t* new_node;

    new_node = malloc(sizeof(node_t));

    new_node->value = value;
    new_node->next = *phead;
    *phead = new_node;
}

void insert_back(node_t** phead, int value)
{
    node_t** pp;
    node_t* new_node;

    pp = phead;
    while (*pp != NULL) {
        pp = &(*pp)->next;
    }

    new_node = malloc(sizeof(node_t));

    new_node->value = value;
    new_node->next = *pp;
    *pp = new_node;
}

void insert_sorted(node_t** phead, int value)
{
    node_t** pp;
    node_t* new_node;

    pp = phead;
    while (*pp != NULL) {
        if ((*pp)->value > value) {
            break;
        }

        pp = &(*pp)->next;
    }

    new_node = malloc(sizeof(node_t));

    new_node->value = value;
    new_node->next = *pp;
    *pp = new_node;
}

void print_node(node_t* phead)
{
    while (phead != NULL) {
        printf("%d->", phead->value);

        phead = phead->next;
    }

    puts("NULL");
}

void destroy(node_t* phead)
{
    while (phead != NULL) {
        node_t* tmp = phead->next;

        free(phead);
        phead = tmp;
    }
}
