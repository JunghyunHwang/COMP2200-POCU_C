#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

typedef struct {
    int year;
    int month;
    int day;
} date_t;

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

int main(void)
{
    test_init_struct();

    printf("Struct size: %d\n", sizeof(user_info_t));
    
    return 0;
}
