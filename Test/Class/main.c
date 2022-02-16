#include <stdio.h>

typedef struct {
    void (*honk)(void);
} car_t;

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
