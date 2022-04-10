#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

#define TRUE (1)
#define FALSE (0)

typedef struct queue {
    int front;
    int back;
    int count;
    int max;
    int* list;
} queue_t;

static queue_t init_queue(size_t size);
static void destroy(queue_t* queue);
static int enqueue(queue_t* queue, int val);
static int dequeue(queue_t* queue);

int main(void)
{
    queue_t queue = init_queue(5);

    enqueue(&queue, 2);
    enqueue(&queue, 3);
    enqueue(&queue, 7);
    enqueue(&queue, 1);
    enqueue(&queue, 8);
    dequeue(&queue);
    enqueue(&queue, 10);
    enqueue(&queue, 5);
    dequeue(&queue);
    enqueue(&queue, 5);
    dequeue(&queue);

    destroy(&queue);

    puts("No prob");
    return 0;
}

static queue_t init_queue(size_t size)
{
    queue_t result;
    result.front = 0;
    result.back = 0;
    result.count = 0;
    result.max = size;
    result.list = malloc(sizeof(int) * size);

    return result;
}

static int enqueue(queue_t* queue, int val)
{
    if (queue->count >= queue->max) {
        return FALSE;
    }

    (queue->list)[queue->back] = val;

    queue->back = (queue->back + 1) % queue->max;
    ++queue->count;

    return TRUE;
}

static int dequeue(queue_t* queue)
{
    int result = -1;

    if (queue->count == 0) {
        return result;
    }

    result = (queue->list)[queue->front];
    queue->front = (queue->front + 1) % queue->max;

    --queue->count;

    return result;
}

static void destroy(queue_t* queue)
{
    free(queue->list);
    queue->list = NULL;
}
