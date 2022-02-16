#include <stdio.h>

double add(double x, double y)
{
    return x + y;
}

double subtract(double x, double y)
{
    return x - y;
}

double calculate(double x, double y, double (*func)(double, double))
{
	return func(x, y);
}

int main(void)
{
    double x;
    double y;
    double result;
    double (*op)(double, double);

    x = 1;
    y = 1;
    op = add;

    result = calculate(x, y, op);

    printf("Add result: %.2f\n", result);

    op = subtract;
    result = calculate(x, y, op);

    printf("Subtract result: %.2f\n", result);

    return 0;
}
