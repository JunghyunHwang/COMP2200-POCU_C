#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct person {
    char* first_name;
    char* last_name;
} person_t;

typedef struct user {
    char first_name[50];
    char last_name[50];
} user_t;

void test_user_data(void);
void test_person_data(void);

int main(void)
{
    test_user_data();
    test_person_data();

    puts("No prob");
    return 0;
}

void test_user_data(void)
{
    user_t user1 = { "AB", "CD" };
    user_t user2 = { "AB", "CD" };

    printf("User compare: %d\n", memcmp(&user1, &user2, sizeof(user_t)));
}

void test_person_data(void)
{
    person_t person1;
    person_t person2;

    char str1[] = "AB";
    char str2[] = "CD";

    char* cmp1;
    char* cmp2;

    person1.first_name = malloc(sizeof(char) * strlen(str1) + 1);
    person1.last_name = malloc(sizeof(char) * strlen(str2) + 1);
    memcpy(person1.first_name, str1, strlen(str1) + 1);
    memcpy(person1.last_name, str2, strlen(str2) + 1);

    person2.first_name = malloc(sizeof(char) * strlen(str1) + 1);
    person2.last_name = malloc(sizeof(char) * strlen(str2) + 1);
    memcpy(person2.first_name, str1, strlen(str1) + 1);
    memcpy(person2.last_name, str2, strlen(str2) + 1);

    printf("person1 address: %p\n", (void*)person1.first_name);
    printf("person2 address: %p\n", (void*)person2.first_name);
    printf("Person compare: %d\n", memcmp(person1.first_name, person2.first_name, sizeof(person_t)));

    free(person1.first_name);
    free(person1.last_name);
    free(person2.first_name);
    free(person2.last_name);
}
