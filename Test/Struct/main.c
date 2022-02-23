#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

typedef struct {
    int year;
    int month;
    int day;
} date_t;

typedef struct {
    int num1;
    char ch[8];
    int num2;
    date_t date;
} test_t;

typedef struct {
    int id;
    short age;
    char name[32];
    float weight;
} user_info_t;

typedef struct {
    char position[7];
    char name[10];
} champion_t;

void test_champion(void)
{
    champion_t champions[5];
    const char* position_mid = "mid";
    const char* position_top = "top";
    const char* position_bottom = "bottom";

    const char* mid_champion_name = "ari";
    const char* bottom_champion_name = "vayne";
    const char* top_champion_name = "rumble";

    size_t i;

    strncpy(champions[0].position, position_mid, 7);
    strncpy(champions[1].position, position_top, 7);
    strncpy(champions[2].position, position_bottom, 7);

    strncpy(champions[0].name, mid_champion_name, 10);
    strncpy(champions[1].name, top_champion_name, 10);
    strncpy(champions[2].name, bottom_champion_name, 10);

    for (i = 0; i < 3; ++i) {
        printf("Champion name: %6s\n", champions[0].name);
        printf("Position: %11s\n", champions[0].position);
        printf("=====================\n");
    }

    printf("Struct size: %d\n", sizeof(champion_t));
}

void test_init_struct(void)
{
    date_t date = { 2043, 1, 1 };
    printf("%d-%d-%d\n", date.year, date.month, date.day);
}

void test_pointer_operator(void)
{
    int num[3];
    void* v_p1;
    void* v_p2;
    int* i_p1;
    int* i_p2;

    champion_t champions[2];
    int a;

    a = (char*)&champions[1] - (char*)&champions[0];

    v_p1 = &num[0];
    v_p2 = &num[2];

    i_p1 = &num[0];
    i_p2 = &num[2];

    printf("Print void pointers: %#x, %#x\n", v_p1, v_p2);
    printf("Subtract int pointer: %d\n", i_p2 - i_p1);
    printf("Subtract int pointer casting to char: %d\n", (char*)i_p2 - (char*)i_p1);
}

void test_struct_in_memory(void)
{
    date_t date;
    test_t test;

    printf("date address: %p\n", (void*)&date);
    printf("date.year address: %p\n", (void*)&date.year);
    printf("date.month address: %p\n", (void*)&date.month);
    printf("date.day address: %p\n", (void*)&date.day);
    printf("distance date.year and date.day: %d\n", &date.day - &date.year); /* 2 */
    puts("========================================");

    printf("date address: %p\n", (void*)&test);
    printf("test.num address: %p\n", (void*)&test.num1);
    printf("test.char address: %p\n", (void*)&test.ch);
    printf("test.num2 address: %p\n", (void*)&test.num2);
    printf("test.date address: %p\n", (void*)&test.date);
    printf("date.year address: %p\n", (void*)&test.date.year);
    printf("date.month address: %p\n", (void*)&test.date.month);
    printf("date.day address: %p\n", (void*)&test.date.day);
    printf("distance date.year and date.day: %d\n", &test.num2 - &test.num1); /* 3 */
}

int main(void)
{
    /* 구조체가 메모리에 어떻게 올라가는 */
    test_struct_in_memory();

    return 0;
}
