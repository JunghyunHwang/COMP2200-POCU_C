#ifndef LINKED_LIST_TEST
#define LINKED_LIST_TEST

#define DATA_SIZE 10
#define DATA_MIN 1
#define DATA_MAX 100

static int s_used_arr[DATA_SIZE];
static int s_unused_arr[DATA_SIZE];

void start_test(void);

void test_insert_front(void);

void test_insert_back(void);

void test_insert_sorted(void);

void test_delete_first(void);

void test_delete_last(void);

void test_delete_by_value(void);

void test_find_by_value(void);

void test_delete_by_value(void);

#endif /* LINKED_LIST_TEST */