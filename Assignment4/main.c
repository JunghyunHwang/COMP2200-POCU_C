#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#include "hashmap.h"

#define DEFAULT_ARRAY_LENGTH (20)

static size_t hash_function(const char* key);

int main(void)
{
    hashmap_t* hashmap = NULL;
    size_t i;

    hashmap = init_hashmap_malloc(DEFAULT_ARRAY_LENGTH, hash_function);

    for (i = 0; i < DEFAULT_ARRAY_LENGTH; i++) {
        assert((hashmap->plist)[i] == NULL);
    }

    assert(TRUE == add_key(hashmap, "key1", 1));

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
