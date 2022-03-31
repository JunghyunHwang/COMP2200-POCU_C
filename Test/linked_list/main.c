#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

/*
    insert_sorted 구현
    pp가 가르키는 것은 다음 노드 주소의 주소
*/

#include "linked_list.h"

void test_insert_front(void);
void test_insert_back(void);
void test_insert_sorted(void);
void test_delet_by_value(void);

int main(void)
{
    test_insert_front();
    test_insert_back();
    test_insert_sorted();
    test_delet_by_value();

    /*
    test_insert_front();
    test_insert_back();
    test_insert_sorted();
    test_delet_by_value();
    */

    puts("No prob");

    return 0;
}

void test_insert_front(void)
{
    node_t* head = NULL;

    puts("==============");
    insert_front(&head, 3);
    insert_front(&head, 1);
    insert_front(&head, 5);

    print_node(head);

    puts("Delete first node:");
    delete_first(&head);
    print_node(head);

    puts("Delete last node:");
    delete_last(&head);
    print_node(head);

    destroy(head);
    puts("==============");
}

void test_insert_back(void)
{
    node_t* head = NULL;

    puts("==============");
    insert_back(&head, 3);
    insert_back(&head, 1);
    insert_back(&head, 5);

    print_node(head);

    puts("Delete first node:");
    delete_first(&head);
    print_node(head);

    puts("Delete last node:");
    delete_last(&head);
    print_node(head);

    destroy(head);
    puts("==============");
}

void test_insert_sorted(void)
{
    node_t* head = NULL;

    puts("==============");
    insert_sorted(&head, 3);
    insert_sorted(&head, 1);
    insert_sorted(&head, 5);

    print_node(head);

    puts("Delete first node:");
    delete_first(&head);
    print_node(head);

    puts("Delete last node:");
    delete_last(&head);
    print_node(head);

    destroy(head);
    puts("==============");
}

void test_delet_by_value(void)
{
    node_t* head = NULL;

    puts("==============");
    insert_sorted(&head, 3);
    insert_sorted(&head, 1);
    insert_sorted(&head, 5);
    insert_sorted(&head, 2);
    insert_sorted(&head, 4);

    print_node(head);

    puts("delete by value: 0");
    assert(!delete_by_value(&head, 0));
    print_node(head);

    puts("delete by value: 3");
    assert(delete_by_value(&head, 3));
    assert(!delete_by_value(&head, 3));
    print_node(head);

    puts("delete by value: 2");
    assert(delete_by_value(&head, 2));
    print_node(head);

    puts("delete by value: 5");
    assert(delete_by_value(&head, 5));
    print_node(head);

    destroy(head);
    puts("==============");
}

