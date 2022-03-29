#ifndef DATA_STORE_H
#define DATA_STORE_H

#include "user.h"

user_t* get_user_by_id_or_null(user_t** user_or_null, size_t id);

#endif /* DATA_STORE_H */
