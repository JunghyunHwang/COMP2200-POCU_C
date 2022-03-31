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
        if ((*pp)->value >= value) {
            break;
        }

        pp = &(*pp)->next;
    }

    new_node = malloc(sizeof(node_t));

    new_node->value = value;
    new_node->next = *pp;
    *pp = new_node;
}

void delete_first(node_t** phead)
{
    node_t* tmp;

    tmp = (*phead)->next;
    free(*phead);
    *phead = tmp;
}

void delete_last(node_t** phead)
{
    node_t** pp_node = phead;
    node_t* tmp;

    while (TRUE) {
        if ((*pp_node)->next == NULL) {
            break;
        }

        pp_node = &(*pp_node)->next;
    }

    tmp = *pp_node;
    free(tmp);
    *pp_node = NULL;
}

int delete_by_value(node_t** phead, int value)
{
    node_t** pp_node;
    int result = FALSE;

    pp_node = phead;
    while (*pp_node != NULL) {
        if ((*pp_node)->value == value) {
            node_t* tmp = (*pp_node)->next;

            free(*pp_node);
            *pp_node = tmp;
            result = TRUE;
            break;
        }

        pp_node = &(*pp_node)->next;
    }

    return result;
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
