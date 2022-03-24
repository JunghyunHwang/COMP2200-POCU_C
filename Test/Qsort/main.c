#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

#define LENGTH (7)

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

int int_compare(const void* a, const void* b);

void test_int_sort(void);

int struct_compare(const void* a, const void* b);

void test_struct_sort(void);

int main(void)
{
    test_int_sort();

    test_struct_sort();

    return 0;
}

int int_compare(const void* a, const void* b)
{
    int* num1;
    int* num2;

    num1 = (int*)a;
    num2 = (int*)b;

    return *num2 - *num1;
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

int struct_compare_age(const void* p0, const void* p1)
{
    const userdata_t* user0 = p0;
    const userdata_t* user1 = p1;

    if (user0->age == user1->age) {
        return user0->id - user1->id;
    }

    return user0->age - user1->age;
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
