#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <ctype.h>
#include "character_deserializer.h"

#define TRUE (1)
#define FALSE (0)
#define MAX_LINE_COUNT (512)
#define MAX_NAME_COUNT (50)
#define MAX_MINIONS_COUNT (3)
#define ASCII_ZERO (48)
#define ASCII_NINE (57)

int get_character(const char* filename, character_v3_t* out_character)
{
    version_t result_version = NOT_DEFINE;
    char ch;
    FILE* stream;

    stream = fopen(filename, "r");

    if (stream == NULL) {
        return NOT_DEFINE;
    }

    while ((ch = fgetc(stream)) != EOF && result_version == NOT_DEFINE) {
        switch (ch) {
        case ':':
            result_version = VERSION_1;
            rewind(stream);
            get_character_by_version1(stream, out_character);
            break;
        case ',':
            result_version = VERSION_2;
            rewind(stream);
            get_character_by_version2(stream, out_character);
            break;
        case '|':
            result_version = VERSION_3;
            rewind(stream);
            get_character_by_version3(stream, out_character);
            break;
        default:
            break;
        }
    }

    clearerr(stream);
    fclose(stream);

    return result_version;
}

int check_valid_name(const char* name)
{
    while (*name != '\0') {
        if (isalpha(*name) == 0 && *name != '_' && (*name < ASCII_ZERO || *name > ASCII_NINE)) {
            printf("\'%c\' is invalid characters!", *name);
            return FALSE;
        }

        ++name;
    }

    return TRUE;
}

void check_stat_type(char* data, const char* delims, character_v3_t* out_character)
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
        out_character->name[MAX_NAME_COUNT] = '\0';
        check_valid_name(data);

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

void get_character_by_version1(FILE* stream, character_v3_t* out_character)
{
    char line[MAX_LINE_COUNT];
    const char* delims = ":,";
    char* data;

    strncpy(out_character->name, "player_", 7);
    out_character->name[7] = '\0';
    out_character->minion_count = 0;

    fgets(line, MAX_LINE_COUNT, stream);

    data = strtok(line, delims);
    check_stat_type(data, delims, out_character);

    while ((data = strtok(NULL, delims)) != NULL) {
        check_stat_type(data, delims, out_character);
    }
}

void get_character_by_version2(FILE* stream, character_v3_t* out_character)
{
    char line[MAX_LINE_COUNT];
    char* data;
    unsigned int stat;
    const char* delims = ",";
    size_t stat_number;

    out_character->minion_count = 0;

    /* Read header */
    fgets(line, MAX_LINE_COUNT, stream);
    fgets(line, MAX_LINE_COUNT, stream);

    data = strtok(line, delims);
    strncpy(out_character->name, data, MAX_NAME_COUNT);
    out_character->name[MAX_NAME_COUNT] = '\0';
    check_valid_name(data);

    stat_number = 1;

    while ((data = strtok(NULL, delims)) != NULL) {
        sscanf(data, "%u", &stat);

        switch (stat_number) {
        case STAT_V2_LEVEL:
            out_character->level = stat;
            out_character->leadership = stat / 10;
            break;
        case STAT_V2_STRENGTH:
            out_character->strength = stat;
            break;
        case STAT_V2_DEXTERITY:
            out_character->dexterity = stat;
            break;
        case STAT_V2_INTELLIGENCE:
            out_character->intelligence = stat;
            break;
        case STAT_V2_ARMOUR:
            out_character->armour = stat;
            break;
        case STAT_V2_EVASION:
            out_character->evasion = stat;
            break;
        case STAT_V2_MAGIC_RES:
            out_character->elemental_resistance.fire = stat / 3;
            out_character->elemental_resistance.cold = stat / 3;
            out_character->elemental_resistance.lightning = stat / 3;
            break;
        case STAT_V2_HEALTH:
            out_character->health = stat;
            break;
        case STAT_V2_MANA:
            out_character->mana = stat;
            break;
        default:
            printf("Wrong stat type!!");
            assert(FALSE);
            break;
        }

        ++stat_number;
    }
}

void get_character_by_version3(FILE* stream, character_v3_t* out_character)
{
    char line[MAX_LINE_COUNT];
    char* data;
    unsigned int stat;
    const char* delims = " |";
    size_t minions_count;
    size_t stat_number;
    size_t i;

    /* Read header */
    fgets(line, MAX_LINE_COUNT, stream);
    fgets(line, MAX_LINE_COUNT, stream);

    data = strtok(line, delims);
    strncpy(out_character->name, data, MAX_NAME_COUNT);
    out_character->name[MAX_NAME_COUNT] = '\0';
    check_valid_name(data);

    stat_number = 1;

    while ((data = strtok(NULL, delims)) != NULL) {
        sscanf(data, "%u", &stat);

        switch (stat_number) {
        case STAT_V3_LEVEL:
            out_character->level = stat;
            break;
        case STAT_V3_HEALTH:
            out_character->health = stat;
            break;
        case STAT_V3_MANA:
            out_character->mana = stat;
            break;
        case STAT_V3_STRENGTH:
            out_character->strength = stat;
            break;
        case STAT_V3_DEXTERITY:
            out_character->dexterity = stat;
            break;
        case STAT_V3_INTELLIGENCE:
            out_character->intelligence = stat;
            break;
        case STAT_V3_ARMOUR:
            out_character->armour = stat;
            break;
        case STAT_V3_EVASION:
            out_character->evasion = stat;
            break;
        case STAT_V3_FIRE_RES:
            out_character->elemental_resistance.fire = stat;
            break;
        case STAT_V3_COLD_RES:
            out_character->elemental_resistance.cold = stat;
            break;
        case STAT_V3_LIGHTNING_RES:
            out_character->elemental_resistance.lightning = stat;
            break;
        case STAT_V3_LEADERSHIP:
            out_character->leadership = stat;
            break;
        case STAT_V3_MINION_COUNT:
            out_character->minion_count = stat;
            break;
        default:
            printf("Wrong stat type!!");
            assert(FALSE);
            break;
        }

        ++stat_number;
    }

    minions_count = out_character->minion_count > MAX_MINIONS_COUNT ? MAX_MINIONS_COUNT : out_character->minion_count;

    if (minions_count == 0) {
        return;
    }

    /* Read header */
    fgets(line, MAX_LINE_COUNT, stream);

    for (i = 0; i < minions_count; ++i) {
        fgets(line, MAX_LINE_COUNT, stream);

        data = strtok(line, delims);
        strncpy(out_character->minions[i].name, data, MAX_NAME_COUNT);
        out_character->minions[i].name[MAX_NAME_COUNT] = '\0';
        check_valid_name(data);

        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->minions[i].health = stat;

        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->minions[i].strength = stat;

        data = strtok(NULL, delims);
        sscanf(data, "%u", &stat);
        out_character->minions[i].defence = stat;
    }
}
