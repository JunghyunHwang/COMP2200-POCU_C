#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int value;
    void* next;
} node_t;

void insert_front(node_t** phead, int n);
void insert_back(node_t** phead, int n);
void print_node(const node_t* phead);
void destroy(node_t* phead);

int main(void)
{
    node_t* head = NULL;

    insert_front(&head, 10);
    insert_front(&head, 9);
    insert_front(&head, 8);
    insert_front(&head, 7);
    insert_front(&head, 6);
    insert_front(&head, 5);
    insert_front(&head, 4);
    insert_front(&head, 3);
    insert_front(&head, 2);
    insert_front(&head, 1);
    insert_front(&head, 0);

    print_node(head);

    destroy(head);
    head = NULL;

    puts("No prob");

    return 0;
}

void insert_front(node_t** phead, int n)
{
    node_t* new_node;

    new_node = malloc(sizeof(node_t));

    new_node->value = n;

    new_node->next = *phead;
    *phead = new_node;
}

void remove(node_t** phead, int n)
{
    node_t** pp;

    pp = phead;
    while (*pp != NULL) {
        if ((*pp)->value == n) {
            node_t tmp = *pp;
            *pp = (*pp)->next;
            free(tmp);
            break;
        }

        pp = &(*pp)->next;
    }
}

void destroy(node_t* phead)
{
    node_t* tmp;

    while (phead != NULL) {
        tmp = phead->next;
        free(phead);
        phead = tmp;
    }
}

void print_node(const node_t* phead)
{
    const node_t* pp = phead;

    while (pp != NULL){
        printf("%d->", pp->value);
        pp = pp->next;
    }

    puts("NULL");
}
