#include <stdio.h>
#include <assert.h>
#include "receipter.h"

int main(void)
{
    time_t time = 1569472997;
    char str[9] = "Magarita";
    char message[5] = "Hi";

    assert(TRUE == add_item(str, 12.45));
    assert(TRUE == add_item("Sharkfin soup", 500.12));
    assert(TRUE == add_item("Kingcrab dip", 125.99));
    assert(TRUE == add_item("Deep fried scallops", 7.36));
    str[0] = 'T';
    str[1] = 'a';
    str[2] = 'k';
    str[3] = 'o';
    str[4] = 'y';
    str[5] = 'a';
    str[6] = 'k';
    str[7] = 'i';
    str[8] = '\0';
    assert(TRUE == add_item(str, 6.89));
    assert(TRUE == add_item("Salmon sashimi", 16.54));
    assert(TRUE == add_item("Tuna sashimi", 15.42));
    assert(TRUE == add_item("Unagi soup", 25.48));
    assert(TRUE == add_item("Nestea ice tea", 5.99));
    assert(TRUE == add_item("Chocolate brownie fudge", 8.99));

    assert(FALSE == add_item("This won't get added lol", 2.55));

    set_tip(20.55);

    set_message(message);
    
    message[0] = 'H';
    message[1] = 'e';
    message[2] = 'l';
    message[3] = 'l';
    message[4] = 'o';
    
    assert(TRUE == print_receipt("receipt0.txt", time));

    assert(TRUE == add_item("Raw sea cucumber", 34.26));
    assert(TRUE == add_item("Pan fried Mackerel", 16.58));
    assert(TRUE == add_item("Pepsi", 5.99));

    assert(TRUE == print_receipt("receipt1.txt", time));

    set_message("My message");

    assert(FALSE == print_receipt("receipt2.txt", time));

    assert(TRUE == add_item("Strawberry Shortcake", 15));

    set_tip(5);

    set_message("Thanks for dining with us! Give me the beat, I ride it like a jetski So many bitches");

    assert(TRUE == print_receipt("receipt3.txt", time));

    return 0;
}
