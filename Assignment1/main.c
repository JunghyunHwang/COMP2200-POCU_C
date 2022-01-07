#include <stdio.h>
#include <assert.h>
#include "pomoku.h"

int main(void)
{
    int test_score;

    init_game();
    place_stone(COLOR_BLACK, 0, 1);
    place_stone(COLOR_BLACK, 0, 2);
    place_stone(COLOR_BLACK, 0, 3);
    place_stone(COLOR_BLACK, 0, 4);

    test_score = get_score(COLOR_BLACK);
    printf("score is %d \n", test_score);

    place_stone(COLOR_BLACK, 0, 5);

    test_score = get_score(COLOR_BLACK);
    printf("score is %d \n", test_score);

    place_stone(COLOR_BLACK, 0, 6);

    test_score = get_score(COLOR_BLACK);
    printf("score is %d \n", test_score);

    return 0;
}
