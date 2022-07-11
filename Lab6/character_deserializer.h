#ifndef CHARACTER_DESERIALIZER_H
#define CHARACTER_DESERIALIZER_H

#include <stdio.h>

typedef enum version {
    NOT_DEFINE,
    VERSION_1,
    VERSION_2,
    VERSION_3
} version_t;

typedef enum stat_types_v2 {
    STAT_V2_NAME,
    STAT_V2_LEVEL,
    STAT_V2_STRENGTH,
    STAT_V2_DEXTERITY,
    STAT_V2_INTELLIGENCE,
    STAT_V2_ARMOUR,
    STAT_V2_EVASION,
    STAT_V2_MAGIC_RES,
    STAT_V2_HEALTH,
    STAT_V2_MANA
} stat_v2_t;

typedef enum stat_types_v3 {
    STAT_V3_NAME,
    STAT_V3_LEVEL,
    STAT_V3_HEALTH,
    STAT_V3_MANA,
    STAT_V3_STRENGTH,
    STAT_V3_DEXTERITY,
    STAT_V3_INTELLIGENCE,
    STAT_V3_ARMOUR,
    STAT_V3_EVASION,
    STAT_V3_FIRE_RES,
    STAT_V3_COLD_RES,
    STAT_V3_LIGHTNING_RES,
    STAT_V3_LEADERSHIP,
    STAT_V3_MINION_COUNT
} stat_v3_t;

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

void check_stat_type(char* data, const char* delims, character_v3_t* out_character);

int get_character(const char* filename, character_v3_t* out_character);

void get_character_by_version1(FILE* stream, character_v3_t* out_character);

void get_character_by_version2(FILE* stream, character_v3_t* out_character);

void get_character_by_version3(FILE* stream, character_v3_t* out_character);

#endif /* CHARACTER_DESERIALIZER_H */
