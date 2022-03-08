#include <stdio.h>

typedef struct {
	int value;
	node_t* next;
} node_t;

void insert_front(node_t** phead, int n);

int main(void)
{
	node_t* head = NULL;

	insert_front(&head, 3);

	return 0;
}

void insert_front(node_t** phead, int n)
{
	node_t* new_node;

	new_node = malloc(sizeof(node_t));
	new_node->next = *phead;
	*phead = new_node;
}