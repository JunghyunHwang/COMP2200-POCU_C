#include <stdio.h>
#include <assert.h>
#include <time.h>
#include "receipter.h"

/*
    char str[52];
    char menu[] = "Give me the beat";
    double price = 998.425;

    sprintf(str, "%25s%25.2f\n", menu, price);
    str[51] = '\0';
    printf("%s", str);
*/

/*
printf("유닉스 타임 (Unix Time): %lld 초\n\n", timer); 
    printf("현재 년: %d\n", timer.tm_year + 1900);
    printf("현재 월: %d\n", timer.tm_mon + 1);
    printf("현재 일: %d\n", timer.tm_mday);
    printf("현재 시: %d\n", timer.tm_hour);
*/

int main(void)
{
/*
    add_item("Pasta", 52.39);
    add_item("Ice cream", 52.39);
    add_item("", 52.39);
    add_item("Fried rice", 52.39);
    add_item("Tacoyaki", 52.39);
    add_item("Tuna sashimi", 52.39);
    add_item("Magarita", 52.39);
    add_item("Coffe", 52.39);
    add_item("Ramen", 52.39);
    add_item("Burger", 52.39);
    add_item("Steak", 52.39);
    add_item("Sushi", 52.39);
*/
    time_t now = time(NULL);
    add_item("Scallops", 24.55); /* TRUE */
    add_item("Crab",21.45); /* TRUE */
    add_item("Sashimi", 15.50); /* TRUE */

    set_message("Thanks for dining with us!");

    print_receipt("receipt.txt", now); /* TRUE */
    
    printf("No prob");

    return 0;
}
