#include <stdio.h>
#include <stdlib.h>

#include "linked_list.h"

void insert_front(node_t** phead, int val)
{
    node_t* new_node;

    new_node = malloc(sizeof(node_t));
    new_node->value = val;
    new_node->next = *phead;

    *phead = new_node;
}

void insert_back(node_t** phead, int val)
{
    node_t** pp = phead;
    node_t* new_node;

    while (*pp != NULL) {
        pp = &(*pp)->next;
    }

    new_node = malloc(sizeof(node_t));
    new_node->value = val;
    new_node->next = *pp;

    *pp = new_node;
}

void insert_sorted(node_t** phead, int val)
{
    node_t** pp = phead;
    node_t* new_node;

    while (*pp != NULL) {
        if ((*pp)->value > val) {
            break;
        }

        pp = &(*pp)->next;
    }

    new_node = malloc(sizeof(node_t));
    new_node->value = val;
    new_node->next = *pp;

    *pp = new_node;
}

void delete_first(node_t** phead)
{
    node_t* tmp = (*phead)->next;

    free(*phead);
    *phead = tmp;
}

void delete_last(node_t** phead)
{
    node_t** pp = phead;

    while ((*pp)->next != NULL) {
        pp = &(*pp)->next;
    }

    free(*pp);
    *pp = NULL;
}

int delete_by_value(node_t** phead, int val)
{
    node_t** pp = phead;

    while (*pp != NULL) {
        if ((*pp)->value == val) {
            node_t* tmp = (*pp)->next;
            free(*pp);
            *pp = tmp;

            return TRUE;
        }

        pp = &(*pp)->next;
    }

    return FALSE;
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
