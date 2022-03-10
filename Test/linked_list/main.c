#include <stdio.h>

typedef struct {
    int value;
    void* next;
} node_t;

void insert_front(node_t** head, int value);
void print_node(node_t* head);

int main(void)
{
    node_t* head = NULL;
    insert_front(&head, 3);
    insert_front(&head, 5);

    return 0;
}

void insert_front(node_t** head, int value)
{
    node_t new_node;

    new_node.value = value;
    new_node.next = *head;

    puts("===================");

    printf("new node value: %d\n", new_node.value);
    printf("new node next node address: %p\n", new_node.next);

    printf("head pointing address: %p\n", (void*)*head);

    *head = &new_node;

    printf("changed head pointing address: %p\n", (void*)*head);
    printf("new node address: %p\n", (void*)&new_node);
}

void print_node(node_t* head)
{
    node_t* pp;
    void* tmp;

    pp = head;

    puts("==== Print node ====");
    while (pp->next != NULL) {
        printf("%d ", pp->value);

        tmp = pp->next;
        pp = tmp;
    }

    puts("");
}
