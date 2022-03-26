#include <stdio.h>
#include <stdlib.h>

/*
    insert_sorted 구현
    pp가 가르키는 것은 다음 노드 주소의 주소
*/

#include "linked_list.h"

void test_insert_front(void);

void test_insert_sorted(void);

void test_insert_back(void);

int main(void)
{
    test_insert_front();
    test_insert_back();
    test_insert_sorted();

    /*
    */

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

void test_insert_back(void)
{
    node_t* head = NULL;

    insert_back(&head, 3);
    insert_back(&head, 1);
    insert_back(&head, 5);

    print_node(head);

    destroy(head);
}

void test_insert_sorted(void)
{
    node_t* head = NULL;

    insert_sorted(&head, 3);
    insert_sorted(&head, 1);
    insert_sorted(&head, 5);

    print_node(head);

    destroy(head);
}

