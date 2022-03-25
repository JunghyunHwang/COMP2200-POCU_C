#include <stdio.h>
#include <stdlib.h>

/*
    insert_sorted 구현
    pp가 가르키는 것은 다음 노드 주소의 주소
*/

#include "linked_list.h"

void test_insert_front(void);

void test_insert_sorted(void);

int main(void)
{
    test_insert_front();
    test_insert_sorted();

    puts("No prob");

    return 0;
}

void test_insert_front(void)
{
    node_t* head = NULL;

    insert_front(&head, 3);
    insert_front(&head, 1);
    insert_front(&head, 5);

    print_node(head);

    destroy(head);
}

void test_insert_sorted(void)
{
    node_t* head = NULL;

    insert_sorted(&head, 3);
    insert_sorted(&head, 2);
    insert_sorted(&head, 5);

    print_node(head);

    destroy(head);
}

void insert_front(node_t** phead, int value)
{
    node_t* new_node;

    new_node = malloc(sizeof(node_t));
    new_node->value = value;

    new_node->next = *phead;
    *phead = new_node;
}

void insert_sorted(node_t** phead, int value)
{
    node_t** pp = phead;
    node_t* new_node;

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
    node_t* p = phead;

    while (p != NULL) {
        node_t* tmp = p->next;
        free(p);

        p = tmp;
    }
}
