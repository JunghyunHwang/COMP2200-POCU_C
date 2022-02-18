#include <stdio.h>

void invalid_compile_not_integer_in_switch(void)
{
    char c = 'c';
    float f_num = 3.14;

    switch(f_num) {
    case 'c':
    	printf("Hi character\n");
        break;
    case 3.14:
    	printf("Hi floating pointer\n");
    	break;
    case 1:
    	printf("Hi integer\n");
    	break;
    default:
        printf("That's impossible\n");
        break;
    }
}

int main(void)
{
    invalid_compile_not_integer_in_switch();
}
