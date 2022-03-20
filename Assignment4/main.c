#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#include "hashmap.h"

#define DEFAULT_ARRAY_LENGTH (20)

static size_t hash_function(const char* key);

void print_list(hashmap_t* hashmap, const char* key)
{
    node_t** phead;
    size_t index = hashmap->hash_func(key) % hashmap->length;

    phead = &(hashmap->plist)[index];

    while (*phead != NULL) {
        printf("%d->", (*phead)->value);
        phead = &(*phead)->next;
    }
    puts("NULL");
}

void test(node_t** phead)
{
    printf("I'm on the next value: %d\n", ((*phead)->next)->value);
}

int main(void)
{
    hashmap_t* hashmap = NULL;
    size_t i;

    hashmap = init_hashmap_malloc(DEFAULT_ARRAY_LENGTH, hash_function);

    for (i = 0; i < DEFAULT_ARRAY_LENGTH; i++) {
        assert((hashmap->plist)[i] == NULL);
    }

    assert(TRUE == add_key(hashmap, "key1", 1));
    assert(FALSE == add_key(hashmap, "key1", 2));
    assert(TRUE == add_key(hashmap, "key2", 10));
    assert(TRUE == add_key(hashmap, "key1(", 18));
    assert(TRUE == add_key(hashmap, "", 1000));

    print_list(hashmap, "key1");
    print_list(hashmap, "key2");
    print_list(hashmap, "key3");

    assert(get_value(hashmap, "key1") == 1);
    assert(get_value(hashmap, "key2") == 10);
    assert(get_value(hashmap, "key1(") == 18);

    test(&(hashmap->plist)[18]);

    assert(update_value(hashmap, "key1", 18) == TRUE);
    assert(update_value(hashmap, "key1(", 1) == TRUE);
    assert(update_value(hashmap, "key3", 3) == FALSE);
    assert(update_value(hashmap, "key1<", 1) == FALSE);
    assert(update_value(hashmap, "", 1000) == TRUE);

    assert(get_value(hashmap, "key1") == 18);
    assert(get_value(hashmap, "key1(") == 1);

    test(&(hashmap->plist)[18]);

    destroy(hashmap);

    puts("No prob");

    return 0;
}

static size_t hash_function(const char* key)
{
    size_t result = 0;
    const char* c = key;

    while (*c != '\0') {
        result += *c++;
    }

    return result;
}
