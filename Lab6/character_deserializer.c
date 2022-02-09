#include <stdio.h>
#include <string.h>
#include "character_deserializer.h"

#define MAX_LINE_COUNT (256)
#define MAX_CHARACTER_NAME (51)

int get_character(const char* filename, character_v3_t* out_character)
{
    int result_version = 0;
    char ch;
    FILE* stream;

    /* chekc version*/
    stream = fopen(filename, "r");
    printf("File name: %s\n", filename);

    while ((ch = fgetc(stream)) != EOF && result_version == 0) {
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

    /* get_character_info_by_version*/
}

void get_character_by_version1(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];

    fgets(info, MAX_LINE_COUNT, stream);
    printf("%s\n", info);
}

void get_character_by_version2(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];
    
    fgets(info, MAX_LINE_COUNT, stream);
    printf("%s\n", info);
}

void get_character_by_version3(FILE* stream, character_v3_t* out_character)
{
    char info[MAX_LINE_COUNT];
    
    fgets(info, MAX_LINE_COUNT, stream);
    printf("%s\n", info);
}
