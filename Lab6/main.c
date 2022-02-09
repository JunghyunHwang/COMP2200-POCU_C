#include <stdio.h>
#include <string.h>
#include "character_deserializer.h"

int main(void)
{
    character_v3_t character;

    get_character("Superman_v1.txt", &character);
    get_character("Batman_v2.txt", &character);
    get_character("Wonderwoman_v3.txt", &character);
    get_character("Flash_v3.txt", &character);

    return 0;
}
