#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <string.h>
#include "data_store.h"

#define USER_INFO_LENGTH (51)
#define LOG_MESSAGE_LENGTH (1024)

void convert_email_string(char* str)
{
    char* p_curr = strstr(str, "@");
    size_t diff = p_curr - str;

    if (diff <= 2) {
        *(p_curr - 1) = '*';
        return;
    }
    
    for (size_t i = 1; i < diff - 1; ++i) {
        str[i] = '*';
    }
}

void convert_password_string(char* str)
{
    size_t password_len = strlen(str);

    if (password_len <= 2) {
        str[password_len - 1] = '*';
        return;
    }

    for (size_t i = 1; i < password_len - 1; ++i) {
        str[i] = '*';
    }
}

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
    char new_email[USER_INFO_LENGTH];
    char log_message[LOG_MESSAGE_LENGTH];

    strcpy(old_email, user->email);
    strcpy(new_email, email);
    strcpy(user->email, email);

    FILE* stream = fopen("log.txt", "ab");

    #if RELEASE
        convert_email_string(old_email);
        convert_email_string(new_email);
    #endif
    
    sprintf(log_message, "TRACE: User %d updated email from \"%s\" to \"%s\"\n", user->id, old_email, new_email);
    fprintf(stream, "%s", log_message);

    fclose(stream);

    return true;
}

bool update_password(user_t** user_or_null, size_t id, const char* password)
{
    if (user_or_null == NULL) {
        return false;
    }

    user_t* user = get_user_by_id_or_null(user_or_null, id);

    if (user == NULL) {
        return false;
    }

    char old_password[USER_INFO_LENGTH];
    char new_password[USER_INFO_LENGTH];
    char log_message[LOG_MESSAGE_LENGTH];

    strcpy(old_password, user->password);
    strcpy(new_password, password);
    strcpy(user->password, password);

    FILE* stream = fopen("log.txt", "ab");

    #if (RELEASE)
        convert_password_string(old_password);
        convert_password_string(new_password);
    #endif

    sprintf(log_message, "TRACE: User %d updated password from \"%s\" to \"%s\"\n", user->id, old_password, new_password);
    fprintf(stream, "%s", log_message);

    fclose(stream);

    return true;
}
