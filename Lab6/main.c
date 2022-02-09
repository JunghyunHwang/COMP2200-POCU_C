#include <stdio.h>
#include <string.h>
#include "character_deserializer.h"

int main(void)
{
    character_v3_t character;

    get_character("Wonderwoman_v3.txt", &character);

    return 0;
}
