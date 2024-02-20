#include <time.h>

#include "test.h"

void start_test(void)
{
    // Randomly generate test data
    srand(time(NULL));
}

void test_insert_front(void)
{
    node_t* head = NULL;
    node_t* next = NULL;
    size_t i;

    for (i = 0; i < DATA_SIZE; ++i) {
        insert_front(&head, s_nums[i]);

        assert(head->value == s_nums[i]);
        assert(head->next == next);
        next = head;
    }

    destroy(&head);
    assert(head == NULL);
}

void test_insert_back(void)
{
    node_t* head = NULL;
    node_t* last = NULL;
    size_t i;

    insert_back(&head, s_nums[0]);
    last = head;
    assert(last->value == s_nums[0]);
    assert(last->next == NULL);

    for (i = 1; i < DATA_SIZE; ++i) {
        insert_back(&head, s_nums[i]);
        last = last->next;
        assert(last != NULL);
        assert(last->value == s_nums[i]);
        assert(last->next == NULL);
    }

    destroy(&head);
    assert(head == NULL);
}

void test_insert_sorted(void)
{
    node_t* head = NULL;
    node_t* p_curr;
    node_t* p_prev;
    size_t i;

    for (i = 0; i < DATA_SIZE; ++i) {
        insert_sorted(&head, s_nums[i]);
    }

    p_curr = head->next;
    p_prev = head;

    while (p_curr != NULL) {
        assert(p_prev->value <= p_curr->value);

        p_prev = p_curr;
        p_curr = p_curr->next;
    }

    destroy(&head);
    assert(head == NULL);
}

void test_delete_first(void)
{

}

void test_delete_last(void)
{

}

void test_delete_by_value(void)
{
    node_t* head = NULL;
    size_t i;

    for (i = 0; i < DATA_SIZE; ++i) {
        insert_sorted(&head, s_nums[i]);
    }
    
    assert(!delete_by_value(&head, -1));

    assert(delete_by_value(&head, 3));
    assert(!delete_by_value(&head, 3));

    assert(delete_by_value(&head, 2));
    assert(!delete_by_value(&head, 2));

    assert(delete_by_value(&head, 5));
    assert(!delete_by_value(&head, 5));

    destroy(&head);
    assert(head == NULL);
}

void test_find_by_value(void)
{

}