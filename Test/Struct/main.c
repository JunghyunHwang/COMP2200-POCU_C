#include <stdio.h>

int main(void)
{

    typedef struct {
        int year;
        int month;
        int day;
    } date_t;

    date_t date;
    date_t clone;
    int* p;

    date.year = 0;
    date.month = 0;
    date.day = 0;

    clone = date;

    date.year = 2022;

    printf("origin: %d\n", date.year);
    printf("origin: %d\n", date.month);
    printf("origin: %d\n", date.day);

    printf("clone: %d\n", date.year);
    printf("clone: %d\n", date.month);
    printf("clone: %d\n", date.day);

    printf("64bit computer address size: %d\n", sizeof(p));
    
    return 0;
}
