#ifndef DATA_STORE_H
#define DATA_STORE_H

#include <stdbool.h>
#include "user.h"

typedef enum {
    MODE_DEBUG,
    MODE_RELEASE
} build_mode_t;

void convert_email_string(char* str);

void convert_password_string(char* str);

user_t* get_user_by_id_or_null(user_t** user_or_null, size_t id);

user_t* get_user_by_username_or_null(user_t** user_or_null, const char* username);

bool update_email(user_t** user_or_null, size_t id, const char* email);

bool update_password(user_t** user_or_null, size_t id, const char* password);

#endif /* DATA_STORE_H */
