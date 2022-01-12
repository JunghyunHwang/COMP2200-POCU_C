#include <stdio.h>
#include <assert.h>
#include "pomoku.h"

int main(void)
{
    init_game();
    printf("Board row size : %u \n", get_row_count());
    printf("Board column size : %u \n", get_column_count());
    printf("=======place stone 1========= \n");
    place_stone(COLOR_BLACK, 7, 7);
    printf("=======place stone 2========= \n");
    place_stone(COLOR_BLACK, 6, 8);
    printf("=======place stone 3========= \n");
    place_stone(COLOR_BLACK, 5, 9);
    printf("=======place stone 4========= \n");
    place_stone(COLOR_BLACK, 9, 5);
    printf("=======place stone 5========= \n");
    place_stone(COLOR_BLACK, 8, 6);
    assert(1 == get_score(COLOR_BLACK));
    printf("=======place stone 6========= \n");
    place_stone(COLOR_BLACK, 3, 11);
    printf("=======place stone 7========= \n");
    place_stone(COLOR_BLACK, 4, 10);
    assert(4 == get_score(COLOR_BLACK));

    remove_row(COLOR_ANORAK, 5);
    return 0;
}
