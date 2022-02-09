#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <ctype.h>
#include "character_deserializer.h"

#define MAX_LINE_COUNT (256)
#define MAX_NAME_COUNT (51)
#define TRUE (1)
#define FALSE (0)
#define ASCII_ZERO (48)
#define ASCII_NINE (57)

void print_character_spec(character_v3_t* out_character)
{
    printf("%13s%14s\n", "name:", out_character->name);
    printf("%13s%14u\n", "level:", out_character->level);
    printf("%13s%14u\n", "health:", out_character->health);
    printf("%13s%14u\n", "mana:", out_character->mana);
    printf("%13s%14u\n", "strength:", out_character->strength);
    printf("%13s%14u\n", "dexterity:", out_character->dexterity);
    printf("%13s%14u\n", "intelligence:", out_character->intelligence);
    printf("%13s%14u\n", "armour:", out_character->armour);
    printf("%13s%14u\n", "evasion:", out_character->evasion);
    printf("%13s%14u\n", "fire_res:", out_character->elemental_resistance.fire);
    printf("%13s%14u\n", "colde_res:", out_character->elemental_resistance.cold);
    printf("%13s%14u\n", "lightning:", out_character->elemental_resistance.lightning);
    printf("%13s%14u\n", "leadership:", out_character->leadership);
    printf("%13s%14lu\n", "minion_count", out_character->minion_count);
}

int check_valid_name(const char* input)
{
    while (*input != '\0') {
        if (isalpha(*input) == 0 && *input != '_' && (*input < ASCII_ZERO || *input > ASCII_NINE)) {
            printf("\'%c\' invalid character\n", *input);
            return FALSE;
        }
        ++input;
    }

    return TRUE;
}

int get_character(const char* filename, character_v3_t* out_character)
{
    version_t result_version = NOT_DEFINE;
    char ch;
    FILE* stream;

    /* chekc version*/
    stream = fopen(filename, "r");
    printf("File name: %s\n", filename);

    while ((ch = fgetc(stream)) != EOF && result_version == NOT_DEFINE) {
        switch (ch) {
        case ':':
            result_version = VERSION_1;
            rewind(stream);
            printf("version: %d\n", result_version);
            
            get_character_by_version1(stream, out_character);
            printf("=================\n");
            break;
        case ',':
            result_version = VERSION_2;
            rewind(stream);
            printf("version: %d\n", result_version);

            get_character_by_version2(stream, out_character);
            printf("=================\n");
            break;
        case '|':
            result_version = VERSION_3;
            rewind(stream);
            printf("version: %d\n", result_version);

            get_character_by_version3(stream, out_character);
            printf("=================\n");
            break;
        default:
            break;
        }
    }

    fclose(stream);

    return result_version;
}

void get_character_by_version1(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];

    while (fgets(info, MAX_LINE_COUNT, stream) != NULL) {
        printf("%s\n", info);
    }
}

void get_character_by_version2(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];
    
    while (fgets(info, MAX_LINE_COUNT, stream) != NULL) {
        printf("%s\n", info);
    }
}

void get_character_by_version3(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];
    char key[MAX_LINE_COUNT];
    char value[MAX_LINE_COUNT];
    char delims[] = " |";
    char* data;
    unsigned int stat = 0;
    size_t i;

    fgets(key, MAX_LINE_COUNT, stream);
    fgets(info, MAX_LINE_COUNT, stream);

    data = strtok(info, delims);
    check_valid_name(data);
    strncpy(out_character->name, data, MAX_NAME_COUNT);

    i = 1;

    while ((data = strtok(NULL, delims)) != NULL) {
        sscanf(data, "%u", &stat);

        switch (i) {
        case STAT_LEVEL:
            out_character->level = stat;
            break;
        case STAT_HEALTH:
            out_character->health = stat;
            break;
        case STAT_MANA:
            out_character->mana = stat;
            break;
        case STAT_STRENGTH:
            out_character->strength = stat;
            break;
        case STAT_DEXTERITY:
            out_character->dexterity = stat;
            break;
        case STAT_INTELLIGENCE:
            out_character->intelligence = stat;
            break;
        case STAT_ARMOUR:
            out_character->armour = stat;
            break;
        case STAT_EVASION:
            out_character->evasion = stat;
            break;
        case STAT_FIRE_RES:
            out_character->elemental_resistance.fire = stat;
            break;
        case STAT_COLD_RES:
            out_character->elemental_resistance.cold = stat;
            break;
        case STAT_LIGHTNING_RES:
            out_character->elemental_resistance.lightning = stat;
            break;
        case STAT_LEADERSHIP:
            out_character->leadership = stat;
            break;
        case STAT_MINION_COUNT:
            out_character->minion_count = stat;
            break;
        default:
            assert(FALSE);
            break;
        }

        ++i;
    }

    print_character_spec(out_character);

    fgets(key, MAX_LINE_COUNT, stream);

    for (i = 0; i < out_character->minion_count; ++i) {
        fgets(info, MAX_LINE_COUNT, stream);
        data = strtok(info, delims);
        check_valid_name(data);
        strncpy(out_character->minions[i].name, data, MAX_NAME_COUNT);
        printf("minion name: %s\n", out_character->minions[i].name);

        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->minions[i].health = stat;
        printf("minion hel: %u\n", out_character->minions[i].health);

        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->minions[i].strength = stat;
        printf("minion strength: %u\n", out_character->minions[i].strength);

        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->minions[i].defence = stat;
        printf("minion def: %u\n", out_character->minions[i].defence);
    }
}
