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
    printf("%13s%14u\n", "cold_res:", out_character->elemental_resistance.cold);
    printf("%13s%14u\n", "lightning:", out_character->elemental_resistance.lightning);
    printf("%13s%14u\n", "leadership:", out_character->leadership);
    printf("%13s%14u\n", "minion_count", out_character->minion_count);
}

void check_stat_type(char* data, char* delims, character_v3_t* out_character)
{
    unsigned int stat;

    if (strcmp(data, "lvl") == 0) {
        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->level = stat;
        out_character->leadership = stat / 10;
    } else if (strcmp(data, "intel") == 0) {
        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->intelligence = stat;
    } else if (strcmp(data, "str") == 0) {
        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->strength = stat;
    } else if (strcmp(data, "dex") == 0) {
        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->dexterity = stat;
        out_character->evasion = stat / 2;
    } else if (strcmp(data, "def") == 0) {
        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->armour = stat;
        out_character->elemental_resistance.fire = stat / 12;
        out_character->elemental_resistance.cold = stat / 12;
        out_character->elemental_resistance.lightning = stat / 12;
    } else if (strcmp(data, "id") == 0) {
        data = strtok(NULL, delims);
        strncat(out_character->name, data, MAX_NAME_COUNT - 7);
    } else if (strcmp(data, "hp") == 0) {
        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->health = stat;
    } else if (strcmp(data, "mp") == 0) {
        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->mana = stat;
    }
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
            printf("File version: %d\n", result_version);
            
            rewind(stream);
            get_character_by_version1(stream, out_character);
            printf("===========================\n");
            break;
        case ',':
            result_version = VERSION_2;
            printf("File version: %d\n", result_version);

            rewind(stream);
            get_character_by_version2(stream, out_character);
            printf("===========================\n");
            break;
        case '|':
            result_version = VERSION_3;
            printf("File version: %d\n", result_version);

            rewind(stream);
            get_character_by_version3(stream, out_character);
            printf("===========================\n");
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
    char delims[] = ":,";
    char* data;

    strncpy(out_character->name, "player_", 7);
    out_character->minion_count = 0;

    fgets(info, MAX_LINE_COUNT, stream);

    data = strtok(info, delims);
    check_stat_type(data, delims, out_character);  

    while ((data = strtok(NULL, delims)) != NULL) {
        check_stat_type(data, delims, out_character);  
    }

    print_character_spec(out_character);
}

void get_character_by_version2(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];
    char delims[] = ",";
    char* data;
    unsigned int stat = 0;

    out_character->minion_count = 0;

    fgets(info, MAX_LINE_COUNT, stream);
    fgets(info, MAX_LINE_COUNT, stream);

    data = strtok(info, delims);
    check_valid_name(data);
    strncpy(out_character->name, data, MAX_NAME_COUNT);

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    out_character->level = stat;
    out_character->leadership = stat / 10;

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    out_character->strength = stat;

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    out_character->dexterity = stat;

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    out_character->intelligence = stat;

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    out_character->armour = stat;

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    out_character->evasion = stat;

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    stat /= 3;
    out_character->elemental_resistance.fire = stat;
    out_character->elemental_resistance.cold = stat;
    out_character->elemental_resistance.lightning = stat;

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    out_character->health = stat;

    data = strtok(NULL, delims);
    sscanf(data, "%u", &stat);
    out_character->mana = stat;

    print_character_spec(out_character);
}

void get_character_by_version3(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];
    char delims[] = " |";
    char* data;
    unsigned int stat = 0;
    size_t i;

    fgets(info, MAX_LINE_COUNT, stream);
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

    fgets(info, MAX_LINE_COUNT, stream);

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
