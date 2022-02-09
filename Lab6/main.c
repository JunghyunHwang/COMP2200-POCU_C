#include <stdio.h>
#include <string.h>
#include "character_deserializer.h"

int main(void)
{
    character_v3_t superman_v1;
    int version = get_character("Flash_v3.txt", &superman_v1);

    printf("File version: %d\n", version);

    return 0;
}
