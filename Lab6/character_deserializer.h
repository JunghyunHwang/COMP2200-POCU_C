#ifndef CHARACTER_DESERIALIZER_H
#define CHARACTER_DESERIALIZER_H

typedef enum version {
    NOT_DEFINE,
    VERSION_1,
    VERSION_2,
    VERSION_3
} version_t;

typedef enum stat_type {
    STAT_NAME,
    STAT_LEVEL,
    STAT_HEALTH,
    STAT_MANA,
    STAT_STRENGTH,
    STAT_DEXTERITY,
    STAT_INTELLIGENCE,
    STAT_ARMOUR,
    STAT_EVASION,
    STAT_FIRE_RES,
    STAT_COLD_RES,
    STAT_LIGHTNING_RES,
    STAT_LEADERSHIP,
    STAT_MINION_COUNT
} stat_t;

typedef struct {
    char name[51];
    unsigned int health;
    unsigned int strength;
    unsigned int defence;
} minion_t;

typedef struct {
    unsigned int fire;
    unsigned int cold;
    unsigned int lightning;
} elemental_resistance_t;

typedef struct {
    char name[51];
    unsigned int level;
    unsigned int health;
    unsigned int mana;
    unsigned int strength;
    unsigned int dexterity;
    unsigned int intelligence;
    unsigned int armour;
    unsigned int evasion;
    unsigned int leadership;
    size_t minion_count;
    elemental_resistance_t elemental_resistance;
    minion_t minions[3];
} character_v3_t;

void check_stat_type(char* data, char* delims, character_v3_t* out_character);

int get_character(const char* filename, character_v3_t* out_character);

void get_character_by_version1(FILE* stream, character_v3_t* out_character);

void get_character_by_version2(FILE* stream, character_v3_t* out_character);

void get_character_by_version3(FILE* stream, character_v3_t* out_character);

#endif /* CHARACTER_DESERIALIZER_H */
