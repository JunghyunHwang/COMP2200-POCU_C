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

    hashmap = malloc(sizeof(hashmap_t));
    hashmap->hash_func = p_hash_func;
    hashmap->length = length;

    hashmap->plist = malloc(sizeof(node_t*) * length);

    for (i = 0; i < length; ++i) {
        (hashmap->plist)[i] = NULL;
    }

    return hashmap;
}

int add_key(hashmap_t* hashmap, const char* key, const int value)
{
    node_t** pp_next_node;
    node_t* new_node;
    char* key_value;
    size_t index;
    size_t key_len;

    if (hashmap->length == 0) {
        return FALSE;
    }

    index = hashmap->hash_func(key) % hashmap->length;
    pp_next_node = &(hashmap->plist)[index];

    while (*pp_next_node != NULL) {
        if (strcmp((*pp_next_node)->key, key) == 0) {
            return FALSE;
        }

        pp_next_node = &(*pp_next_node)->next;
    }

    key_len = strlen(key);
    key_value = malloc(key_len + 1);
    memcpy(key_value, key, key_len);
    key_value[key_len] = '\0';

    new_node = malloc(sizeof(node_t));
    new_node->key = key_value;
    new_node->value = value;
    new_node->next = *pp_next_node;

    *pp_next_node = new_node;

    return TRUE;
}

int get_value(const hashmap_t* hashmap, const char* key)
{
    node_t* p_curr_node;
    size_t index;
    int result = -1;

    if (hashmap->length == 0) {
        return result;
    }

    index = hashmap->hash_func(key) % hashmap->length;
    p_curr_node = (hashmap->plist)[index];

    while (p_curr_node != NULL) {
        if (strcmp(p_curr_node->key, key) == 0) {
            result = p_curr_node->value;
            break;
        }

        p_curr_node = p_curr_node->next;
    }

    return result;
}

int update_value(hashmap_t* hashmap, const char* key, const int value)
{
    node_t* p_curr_node;
    size_t index;

    if (hashmap->length == 0) {
        return FALSE;
    }

    index = hashmap->hash_func(key) % hashmap->length;
    p_curr_node = (hashmap->plist)[index];

    while (p_curr_node != NULL) {
        if (strcmp(p_curr_node->key, key) == 0) {
            p_curr_node->value = value;

            return TRUE;
        }

        p_curr_node = p_curr_node->next;
    }

    return FALSE;
}

int remove_key(hashmap_t* hashmap, const char* key)
{
    node_t** pp_next_node;
    size_t index;

    if (hashmap->length == 0) {
        return FALSE;
    }

    index = hashmap->hash_func(key) % hashmap->length;
    pp_next_node = &(hashmap->plist)[index];

    while (*pp_next_node != NULL) {
        if (strcmp((*pp_next_node)->key, key) == 0) {
            node_t* tmp = *pp_next_node;
            *pp_next_node = (*pp_next_node)->next;

            free(tmp->key);
            free(tmp);
            return TRUE;
        }

        pp_next_node = &(*pp_next_node)->next;
    }

    return FALSE;
}

void destroy(hashmap_t* hashmap)
{
    size_t i;

    for (i = 0; i < hashmap->length; ++i) {
        node_t* p_node = (hashmap->plist)[i];

        while (p_node != NULL) {
            node_t* tmp = p_node->next;

            free(p_node->key);
            free(p_node);
            p_node = tmp;
        }
    }

    free(hashmap->plist);
    hashmap->plist = NULL;

    free(hashmap);
    hashmap = NULL;
}
