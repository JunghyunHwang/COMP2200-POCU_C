#include <stdio.h>
#include "translate.h"

int main(int argc, const char* argv[])
{
    char filtered[512];

    filter_range(filtered, argv[1]);

    printf("%s\n", filtered);
    /*translate(argc, argv); */

    return 0;
}
