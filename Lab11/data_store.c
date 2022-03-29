#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <string.h>
#include "data_store.h"

#define USER_INFO_LENGTH (51)
#define LOG_MESSAGE_LENGTH (1024)

void convert_string(char* str);

user_t* get_user_by_id_or_null(user_t** user_or_null, size_t id)
{
    if (user_or_null == NULL) {
        return NULL;
    }

    user_t** pp_user = user_or_null;
    user_t* user = NULL;

    while (*pp_user != NULL) {
        if ((*pp_user)->id == id) {
            user = *pp_user;
            break;
        }

        ++pp_user;
    }

    return user;
}

user_t* get_user_by_username_or_null(user_t** user_or_null, const char* username)
{
    if (user_or_null == NULL) {
        return NULL;
    }

    user_t** pp_user = user_or_null;
    user_t* user = NULL;

    while (*pp_user != NULL) {
        if (strcmp((*pp_user)->username, username) == 0) {
            user = *pp_user;
            break; 
        }

        ++pp_user;
    }

    return user;
}

bool update_email(user_t** user_or_null, size_t id, const char* email)
{
    if (user_or_null == NULL) {
        return false;
    }

    user_t* user = get_user_by_id_or_null(user_or_null, id);

    if (user == NULL) {
        return false;
    }

    char old_email[USER_INFO_LENGTH];
    char log_message[LOG_MESSAGE_LENGTH];

    strcpy(old_email, user->email);
    strcpy(user->email, email);

    printf("old: %s\n", old_email);
    printf("new: %s\n", user->email);

    FILE* stream = fopen("log.txt", "wb");

    sprintf(log_message, "TRACE: User %d updated email from \"%s\" to \"%s\"\n", user->id, old_email, user->email);
    fprintf(stream, "%s", log_message);

    fclose(stream);

    return true;
}
