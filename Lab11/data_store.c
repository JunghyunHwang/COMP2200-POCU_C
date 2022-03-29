#include <stdio.h>

#include "data_store.h"

user_t* get_user_by_id_or_null(user_t** user_or_null, size_t id)
{
    if (user_or_null == NULL) {
        return NULL;
    }
    puts("Start");

    user_t** pp_user = user_or_null;
    user_t* result = NULL;

    for (size_t i = 0; pp_user[i] != NULL; ++i) {
        if (pp_user[i]->id == id) {
            result = pp_user[i];
            break;
        }
    }

    puts("Complete");
    return result;
}
