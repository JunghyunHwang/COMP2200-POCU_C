#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#include "hashmap.h"

#define DEFAULT_ARRAY_LENGTH (20)

static size_t hash_function(const char* key);

void test_add_key(hashmap_t* hashmap);

void test_get_value(hashmap_t* hashmap);

void test_update_value(hashmap_t* hashmap);

void test_remove_key(hashmap_t* hashmap);

void official_test(void);

int main(void)
{
    hashmap_t* hashmap = NULL;
    size_t i;

    hashmap = init_hashmap_malloc(DEFAULT_ARRAY_LENGTH, hash_function);

    for (i = 0; i < DEFAULT_ARRAY_LENGTH; i++) {
        assert((hashmap->plist)[i] == NULL);
    }

    test_add_key(hashmap);
    test_get_value(hashmap);
    test_update_value(hashmap);
    test_remove_key(hashmap);

    destroy(hashmap);
    
    official_test();

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

void test_add_key(hashmap_t* hashmap)
{
    /* normal */
    assert(TRUE == add_key(hashmap, "key1", 1)); /* hash index 18 */
    assert(TRUE == add_key(hashmap, "key2", 2));
    assert(TRUE == add_key(hashmap, "key1(", 40)); /* hash index 18 */
    assert(TRUE == add_key(hashmap, "key1<", 60)); /* hash index 18 */

    print_node(hashmap, 18);

    /* already has key */
    assert(FALSE == add_key(hashmap, "key1", 2));
    assert(FALSE == add_key(hashmap, "key2", 2));

    /* empty key string */
    assert(FALSE == add_key(hashmap, "", 1000));
}

void test_get_value(hashmap_t* hashmap)
{
    /* valid keys */
    assert(get_value(hashmap, "key1") == 1);
    assert(get_value(hashmap, "key2") == 2);
    assert(get_value(hashmap, "key1(") == 40);

    /* invalid keys */
    assert(get_value(hashmap, "key3") == -1);
}

void test_update_value(hashmap_t* hashmap)
{
    /* valid keys */
    assert(update_value(hashmap, "key1", 40) == TRUE);
    assert(update_value(hashmap, "key1(", 1) == TRUE);
    assert(update_value(hashmap, "key2", 20000) == TRUE);

    /* invalid keys */
    assert(update_value(hashmap, "key3", 3) == FALSE);

    /* rewind */
    assert(update_value(hashmap, "key1", 1) == TRUE);
    assert(update_value(hashmap, "key1(", 40) == TRUE);
    assert(update_value(hashmap, "key2", 2) == TRUE);
}

void test_remove_key(hashmap_t* hashmap)
{
    /* valid keys */
    assert(TRUE == remove_key(hashmap, "key1("));
    assert(get_value(hashmap, "key1(") == -1);
    print_node(hashmap, 18);

    assert(TRUE == remove_key(hashmap, "key1"));
    assert(get_value(hashmap, "key1") == -1);
    print_node(hashmap, 18);

    assert(TRUE == remove_key(hashmap, "key1<"));
    assert(get_value(hashmap, "key1<") == -1);
    print_node(hashmap, 18);

    /* invalid keys */
    assert(FALSE == remove_key(hashmap, "key3"));

    /* rewind */
    assert(TRUE == add_key(hashmap, "key1", 1));
    assert(TRUE == add_key(hashmap, "key1(", 40));
    assert(TRUE == add_key(hashmap, "key1<", 60));
    print_node(hashmap, 18);
}

void official_test(void)
{
    size_t i = 0;
    hashmap_t* hashmap = NULL;

    hashmap = init_hashmap_malloc(DEFAULT_ARRAY_LENGTH, hash_function);

    for (i = 0; i < 100; i++) {
        char key[100];
        int value = (int)i;
        int c;
        int dummy = 512;

        sprintf(key, "key%u", i);

        assert(add_key(hashmap, key, value) == TRUE);

        c = get_value(hashmap, key);
        assert(c == value);

        assert(add_key(hashmap, key, dummy) == FALSE);

        c = get_value(hashmap, key);
        assert(c == value);
    }

    for (i = 0; i < 100; i++) {
        char key[100];
        int value = (int)(i * i * i);
        int c;

        sprintf(key, "key%u", i);

        assert(update_value(hashmap, key, value) == TRUE);
        c = get_value(hashmap, key);

        assert(c == value);
    }

    for (i = 0; i < 100; i++) {
        char key[100];
        int c;

        sprintf(key, "key%u", i);

        assert(remove_key(hashmap, key) == TRUE);
        c = get_value(hashmap, key);

        assert(c == -1);

        assert(remove_key(hashmap, key) == FALSE);
    }

    for (i = 0; i < DEFAULT_ARRAY_LENGTH; i++) {
        assert((hashmap->plist)[i] == NULL);
    }

    destroy(hashmap);
}
