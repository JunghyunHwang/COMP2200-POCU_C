#include <stdio.h>
#include "class.h"

void print_honk(void)
{
    printf("Honk-Honk\n");
}

int main(void)
{
    car_t car;

    car.honk = print_honk;
    car.honk();

    return 0;
}
