#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>

#include "node.h"
#include "hashmap.h"

hashmap_t* init_hashmap_malloc(size_t length, size_t (*p_hash_func)(const char* key))
{
    hashmap_t* hashmap = NULL;
    size_t i;

    puts("==================");
    puts("Init hashmap start");

    hashmap = malloc(sizeof(hashmap_t));
    hashmap->hash_func = p_hash_func;
    hashmap->length = length;

    hashmap->plist = malloc(sizeof(node_t*) * length);

    for (i = 0; i < length; ++i) {
        node_t* new_node;
        new_node = malloc(sizeof(node_t));
        new_node = NULL;
        (hashmap->plist)[i] = new_node;
    }

    puts("Init hashmap complete");
    puts("==================");
    return hashmap;
}

int add_key(hashmap_t* hashmap, const char* key, const int value)
{
    node_t* head_node;
    char* key_value;
    size_t index;
    size_t key_len;

    key_len = strlen(key);

    key_value = malloc(key_len + 1);
    strncpy(key_value, key, key_len);
    *(key_value + key_len) = '\0';

    index = hashmap->hash_func(key) % hashmap->length;
    head_node = (hashmap->plist)[index];

    if (head_node == NULL) {
        node_t* new_node;

        new_node = malloc(sizeof(node_t));
        new_node->key = key_value;
        new_node->value = value;
        new_node->next = head_node;
        head_node = new_node;

        return TRUE;
    }

    return TRUE;
}

void destroy(hashmap_t* hashmap)
{
    size_t i;

    puts("==================");
    puts("Dispose start");

    for (i = 0; i < hashmap->length; ++i) {
        node_t* node = (hashmap->plist)[i];

        if (node == NULL) {
            goto dispose_node;
        }

        while (node->next != NULL) {
            node_t* tmp = node->next;
            free(node->key);
            free(node); /*  */
            node = tmp;
        }

    dispose_node:
        free(node);
        node = NULL;
    }

    free(hashmap->plist);
    hashmap->plist = NULL;

    free(hashmap);
    hashmap = NULL;

    puts("Dispose complete");
    puts("==================");
}
