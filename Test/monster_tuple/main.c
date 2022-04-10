#include <stdio.h>

#define MONSTER_DATA \
    MONSTER_ENTRY(1, "Ja hwang", 100) \
    MONSTER_ENTRY(2, "Pope kim", 100) \
    MONSTER_ENTRY(3, "Biakiss",  250) \
    MONSTER_ENTRY(4, "Diablo",  2000) \

static void test_tuple(void)
{
    size_t i;

    int ids[] = {
    #define MONSTER_ENTRY(id, name, hp) id,
        MONSTER_DATA
    #undef MONSTER_ENTRY
    };

    const char* names[] = {
    #define MONSTER_ENTRY(id, name, hp) name,
        MONSTER_DATA
    #undef MONSTER_ENTRY
    };

    size_t hps[] = {
    #define MONSTER_ENTRY(id, name, hp) hp,
        MONSTER_DATA
    #undef MONSTER_ENTRY
    };

    for (i = 0; i < 4; ++i) {
        printf("id: %d, name: %s, hp: %d\n", ids[i], names[i], hps[i]);
    }
}

int main(void)
{
    test_tuple();
    printf("%d\n", 3.14);

    return 0;
}
