/* #define _CRT_SECURE_NO_WARNINGS */
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "character_deserializer.h"

#define MAX_LINE_COUNT (2048)
#define MAX_NAME_COUNT (50)
#define MAX_MINIONS_COUNT (3)
#define TRUE (1)
#define FALSE (0)
#define ASCII_ZERO (48)
#define ASCII_NINE (57)

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
        out_character->name[MAX_NAME_COUNT] = '\0';
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

/* int check_valid_name(const char* input)
{
    while (*input != '\0') {
        if (isalpha(*input) == 0 && *input != '_' && (*input < ASCII_ZERO || *input > ASCII_NINE)) {
            return FALSE;
        }
        ++input;
    }

    return TRUE;
} */

int get_character(const char* filename, character_v3_t* out_character)
{
    version_t result_version = NOT_DEFINE;
    char ch;
    FILE* stream;

    stream = fopen(filename, "r");

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
    strncpy(out_character->name, data, MAX_NAME_COUNT);
    out_character->name[MAX_NAME_COUNT] = '\0';

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
}

void get_character_by_version3(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];
    char* data;
    unsigned int stat = 0;
    char delims[] = " |";
    size_t minions_count;
    size_t i;

    /* Read header */
    fgets(info, MAX_LINE_COUNT, stream);
    fgets(info, MAX_LINE_COUNT, stream);

    data = strtok(info, delims);
    strncpy(out_character->name, data, MAX_NAME_COUNT);
    out_character->name[MAX_NAME_COUNT] = '\0';

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
            break;
        }

        ++i;
    }

    minions_count = out_character->minion_count > MAX_MINIONS_COUNT ? MAX_MINIONS_COUNT : out_character->minion_count;

    if (minions_count == 0) {
        return;
    }

    /* Read header */
    fgets(info, MAX_LINE_COUNT, stream);

    for (i = 0; i < minions_count; ++i) {
        fgets(info, MAX_LINE_COUNT, stream);

        data = strtok(info, delims);
        strncpy(out_character->minions[i].name, data, MAX_NAME_COUNT);
        out_character->minions[i].name[MAX_NAME_COUNT] = '\0';

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
