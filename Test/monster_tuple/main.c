#include <stdio.h>

#define MOSTER_DATA \
    MONSTER_ENTRY(1, "Ja Hwang", 200) \
    MONSTER_ENTRY(2, "Pope kim", 200) \
    MONSTER_ENTRY(3, "Biakiss", 1000) \
    MONSTER_ENTRY(4, "Diablo", 20000) \

#define MONSTER_STRUCT \
    MONSTER_MEMBER(int,           id) \
    MONSTER_MEMBER(const char*, name) \
    MONSTER_MEMBER(int,           hp) \

typedef struct {
    #define MONSTER_MEMBER(type, name) type name;
        MONSTER_STRUCT
    #undef MONSTER_MEMBER
} monster_t;

#define MONSTER_MEMBER(type, name)        \
type get_mob_##name(const monster_t* mob) \
{                                         \
    return mob->name;                     \
}                                         \

    MONSTER_STRUCT
#undef MONSTER_MEMBER

static void test_add_moster(void);
static void test_getter(void);

int main(void)
{
    test_add_moster();
    test_getter();

    puts("No prob");
    return 0;
}

static void test_add_moster(void)
{
    size_t i;
    int ids[] = {
        #define MONSTER_ENTRY(id, name, hp) id,
            MOSTER_DATA
    };

    char* names[] = {
        #if defined MONSTER_ENTRY
        #undef MONSTER_ENTRY
        #define MONSTER_ENTRY(id, name, hp) name,
            MOSTER_DATA
        #endif
    };

    int hps[] = {
        #if defined MONSTER_ENTRY
        #undef MONSTER_ENTRY
        #define MONSTER_ENTRY(id, name, hp) hp,
            MOSTER_DATA
        #endif
    };

    for (i = 0; i < 4; ++i) {
        printf("id: %d, name: %s, hp: %d\n", ids[i], names[i], hps[i]);
    }
}

void test_getter(void)
{
    monster_t monster;

    monster.id = 1;
    monster.name = "Ja hwang";
    monster.hp = 2000;

    printf("id: %d, name: %s, hp:%d\n", get_mob_id(&monster), get_mob_name(&monster), get_mob_hp(&monster));
}
