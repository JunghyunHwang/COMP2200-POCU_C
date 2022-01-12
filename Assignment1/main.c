#include <stdio.h>
#include <assert.h>
#include "pomoku.h"

int main(void)
{
    init_game();

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

    printf("=======place stone 8========= \n");
    place_stone(COLOR_ANORAK, 7, 14);
    place_stone(COLOR_ANORAK, 14, 7);

    assert(1 == swap_rows(COLOR_ANORAK, 0, 14));
    assert(1 == swap_columns(COLOR_ANORAK, 0, 14));
    assert(0 == swap_columns(COLOR_ANORAK, 0, 15));

    return 0;
}
