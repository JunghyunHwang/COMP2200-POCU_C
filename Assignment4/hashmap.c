#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>

#include "node.h"
#include "hashmap.h"

void print_node(hashmap_t* hashmap, int index)
{
    node_t** phead = &(hashmap->plist)[index];

    printf("==== print index '%d' nodes ====\n", index);
    while (*phead != NULL) {
        printf("%d->", (*phead)->value);
        phead = &(*phead)->next;
    }
    puts("NULL");
}

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
        (hashmap->plist)[i] = NULL;
    }

    puts("Init hashmap complete");
    puts("==================");
    return hashmap;
}

int add_key(hashmap_t* hashmap, const char* key, const int value)
{
    node_t** phead;
    node_t* new_node;
    char* key_value;
    size_t index;
    size_t key_len;

    if (*key == '\0') {
        return FALSE;
    }

    key_len = strlen(key);

    index = hashmap->hash_func(key) % hashmap->length;
    phead = &(hashmap->plist)[index];

    while (*phead != NULL) {
        if (strcmp((*phead)->key, key) == 0) {
            return FALSE;
        }

        phead = &(*phead)->next;
    }

    key_value = malloc(key_len + 1);
    strncpy(key_value, key, key_len);
    *(key_value + key_len) = '\0';
    
    new_node = malloc(sizeof(node_t));

    new_node->key = key_value;
    new_node->value = value;

    new_node->next = *phead;
    *phead = new_node;

    return TRUE;
}

int get_value(const hashmap_t* hashmap, const char* key)
{
    node_t** phead;
    size_t index = hashmap->hash_func(key) % hashmap->length;
    int result = -1;

    phead = &(hashmap->plist)[index];

    while (*phead != NULL) {

        if (strcmp((*phead)->key, key) == 0) {
            result = (*phead)->value;
            break;
        }

        phead = &(*phead)->next;
    }

    return result;
}

int update_value(hashmap_t* hashmap, const char* key, const int value)
{
    node_t** phead;
    size_t index = hashmap->hash_func(key) % hashmap->length;

    phead = &(hashmap->plist)[index];

    if (*phead == NULL) {
        return FALSE;
    }

    while (*phead != NULL) {
        if (strcmp((*phead)->key, key) == 0) {
            (*phead)->value = value;

            return TRUE;
        }

        phead = &(*phead)->next;
    }

    return FALSE;
}

int remove_key(hashmap_t* hashmap, const char* key)
{
    node_t** phead;
    size_t index = hashmap->hash_func(key) % hashmap->length;

    phead = &(hashmap->plist)[index];

    if (*phead == NULL) {
        return FALSE;
    }

    while (*phead != NULL) {
        if (strcmp((*phead)->key, key) == 0) {
            node_t* tmp = *phead;
            *phead = (*phead)->next;

            free(tmp->key);
            free(tmp);
            return TRUE;
        }

        phead = &(*phead)->next;
    }

    return FALSE;
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
            free(node);
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
