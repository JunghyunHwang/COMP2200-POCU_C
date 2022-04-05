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
    node_t** pp;
    node_t* new_node;

    pp = phead;
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
    node_t** pp;
    node_t* new_node;

    pp = phead;
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

    while (TRUE) {
        if ((*pp)->next == NULL) {
            break;
        }

        pp = &(*pp)->next;
    }

    free(*pp);
    *pp = NULL;
}

int delete_by_value(node_t** phead, int val)
{
    node_t** pp = phead;
    int result = FALSE;

    while (*pp != NULL) {
        if ((*pp)->value == val) {
            node_t* tmp = (*pp)->next;

            free(*pp);
            *pp = tmp;

            result = TRUE;
            break;
        }

        pp = &(*pp)->next;
    }

    return result;
}

void print_node(node_t* phead)
{
    node_t* p_node = phead;

    while (p_node != NULL) {
        printf("%d->", p_node->value);
        p_node = p_node->next;
    }

    puts("NULL");
}

void destroy(node_t* phead)
{
    node_t* p_node = phead;

    while (p_node != NULL) {
        node_t* tmp = p_node->next;

        free(p_node);
        p_node = tmp;
    }
}
