#include <stdio.h>

#define MAX_INPUT (4)

int main(void)
{
	char input[MAX_INPUT];

    while (fgets(input, MAX_INPUT, stdin) != NULL){
        puts(input);
    }

    printf("No prob\n");

    return 0;
}
