#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>

#define LENGTH (7)
#

typedef enum {
    SEX_MALE,
    SEX_FEMALE,
    UNKNOWN
} sex_t;

typedef struct {
    unsigned short id;
    unsigned char age;
    sex_t sex;
} userdata_t;

void test_int_sort(void);
void test_struct_sort(void);
void test_string_sort(void);
int int_compare(const void* a, const void* b);
int struct_compare_age(const void* a, const void* b);
int comp_string(const void* p0, const void* p1);

int main(void)
{
    test_string_sort();
    /*
    test_int_sort();
    test_struct_sort();
    */
    puts("No prob");
    return 0;
}

void test_int_sort(void)
{
    int num[] = { 3, 2, 5, 6, 7, 1, 9, 4, 8, 100 };
    size_t i;

    qsort(num, sizeof(num) / sizeof(num[0]), sizeof(num[0]), int_compare);

    for (i = 0; i < 10; ++i) {
        printf("%d->", num[i]);
    }

    puts("");
}

void test_struct_sort(void)
{
    userdata_t users[LENGTH];
    size_t i = 0;

    printf("enum size: %d\n", sizeof(sex_t));
    printf("userdata struct size: %d\n", sizeof(userdata_t));

    users[i].id = 482;
    users[i].age = 15;
    users[i++].sex = SEX_FEMALE;

    users[i].id = 1;
    users[i].age = 20;
    users[i++].sex = SEX_MALE;

    users[i].id = 57;
    users[i].age = 29;
    users[i++].sex = SEX_FEMALE;

    users[i].id = 839;
    users[i].age = 27;
    users[i++].sex = SEX_FEMALE;

    users[i].id = 124;
    users[i].age = 20;
    users[i++].sex = SEX_MALE;

    users[i].id = 38;
    users[i].age = 29;
    users[i++].sex = SEX_FEMALE;

    users[i].id = 777;
    users[i].age = 30;
    users[i++].sex = SEX_MALE;

    assert(i == LENGTH);

    qsort(users, LENGTH, sizeof(userdata_t), struct_compare_age);

    for (i = 0; i < LENGTH; ++i) {
        printf("User id: %d, User Age: %d\n", users[i].id, users[i].age);
    }
}



void test_string_sort(void)
{
    const char* words[LENGTH] = {
        "premium", "level", "cultured",
        "moaning", "skinny", "curve",
        "book"
    };
    size_t i;

    qsort(words, LENGTH, sizeof(const char*), comp_string);

    for (i = 0; i < LENGTH; ++i) {
        printf("%s\n", words[i]);
    }
}

int int_compare(const void* a, const void* b)
{
    int* num1;
    int* num2;

    num1 = (int*)a;
    num2 = (int*)b;

    return *num1 - *num2;
}

int struct_compare_age(const void* p0, const void* p1)
{
    const userdata_t* user0 = p0;
    const userdata_t* user1 = p1;

    if (user0->age == user1->age) {
        return user0->id - user1->id;
    }

    return user0->age - user1->age;
}

int comp_string(const void* p1, const void* p2)
{
    const char** w1 = (const char**)p1;
    const char** w2 = (const char**)p2;

    return strcmp(*w1 + 1, *w2 + 1);
}
