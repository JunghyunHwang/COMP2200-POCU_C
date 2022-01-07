#include <stdio.h>
#include "pomoku.h"

int main(void)
{
    init_game();

    printf("Black score is : %d", get_score(COLOR_BLACK));
    printf("White score is : %d", get_score(COLOR_WHITE));

    return 0;
}
