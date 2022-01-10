#include <stdio.h>
#include <assert.h>
#include "pomoku.h"

int main(void)
{
    init_game();
    printf("=======place stone 1========= \n");
    place_stone(COLOR_BLACK, 0, 1);
    printf("=======place stone 2========= \n");
    place_stone(COLOR_BLACK, 0, 2);
    printf("=======place stone 3========= \n");
    place_stone(COLOR_BLACK, 0, 3);
    printf("=======place stone 4========= \n");
    place_stone(COLOR_BLACK, 0, 4);
    printf("=======place stone 5========= \n");
    place_stone(COLOR_BLACK, 0, 5);
    printf("=======place stone 6========= \n");
    place_stone(COLOR_BLACK, 0, 6);
    
    return 0;
}
