#include <stdio.h>
#include <assert.h>
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
    node_t** pp_node = phead;
    node_t* new_node;

    while (*pp_node != NULL) {
        pp_node = &(*pp_node)->next;
    }

    new_node = malloc(sizeof(node_t));

    new_node->value = val;
    new_node->next = *pp_node;
    *pp_node = new_node;
}

void insert_sorted(node_t** phead, int val)
{
    node_t** pp_node = phead;
    node_t* new_node;

    while (*pp_node != NULL) {
        if ((*pp_node)->value > val) {
            break;
        }

        pp_node = &(*pp_node)->next;
    }

    new_node = malloc(sizeof(node_t));

    new_node->value = val;
    new_node->next = *pp_node;

    *pp_node = new_node;
}

void delete_first(node_t** phead)
{
    node_t** pp_node = phead;
    node_t* tmp = (*phead)->next;

    free(*pp_node);
    *pp_node = tmp;
}

void delete_last(node_t** phead)
{
    node_t** pp_node = phead;

    while (TRUE) {
        if ((*pp_node)->next == NULL) {
            break;
        }

        pp_node = &(*pp_node)->next;
    }

    free(*pp_node);
    *pp_node = NULL;
}

int delete_by_value(node_t** phead, int val)
{
    node_t** pp_node = phead;

    while (*pp_node != NULL) {
        if ((*pp_node)->value == val) {
            node_t* tmp = (*pp_node)->next;

            free(*pp_node);
            *pp_node = tmp;

            return TRUE;
            break;
        }

        pp_node = &(*pp_node)->next;
    }

    return FALSE;
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
