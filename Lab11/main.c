#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>

#include "data_store.h"

user_t** get_test_users_malloc(void);
void destroy_users(user_t** users);

int main(void)
{
    user_t** users = get_test_users_malloc();

    user_t* user = get_user_by_id_or_null(users, 3);
    assert(user->id == 3);
    printf("User id: %d\n", user->id);
    printf("User name: %s\n", user->username);
    printf("User email: %s\n", user->email);
    printf("User password: %s\n", user->password);

    assert(update_email(users, 3, "dmagk560@gmail.com"));

    destroy_users(users);

    puts("No prob");
    return 0;
}

user_t** get_test_users_malloc(void)
{
    user_t** users = malloc(sizeof(user_t*) * 11);
    size_t i = 0;

    for (i = 0; i < 10; ++i) {
        char username[51];
        char password[51];
        char email[51];

        sprintf(username, "user%d", i);
        sprintf(password, "password%d", i);
        sprintf(email, "email%d@pocustudent.academy", i);

        user_t* user = malloc(sizeof(user_t));
        user->id = i;
        strcpy(user->username, username);
        strcpy(user->email, email);
        strcpy(user->password, password);

        users[i] = user;
    }

    users[i] = NULL;

    return users;
}

void destroy_users(user_t** users)
{
    if (users != NULL) {
        user_t** u = users;

        while (*u != NULL) {
            free(*u);
            u++;
        }

        free(users);
    }
}
