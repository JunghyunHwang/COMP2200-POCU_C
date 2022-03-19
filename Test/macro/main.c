#include <stdio.h>
#include <string.h>

#define message_for(a, b) \
    printf(#a " and " #b ": We love you!\n")

#define token_pasting(num) \
    printf("%s\n", key##num)

#ifndef PI
#define PI 3.14
#endif

int main(void)
{
    const char* key1 = "Valkyrie";
    const char* key2 = "Oracle";
    char time[] = __TIME__;

    printf("%d\n", strcmp(key1, key2));
    printf("Now time: %s\n", time);

    token_pasting(1);
    token_pasting(2);
    message_for(Rakan, Xayah);

    return 0;
}
