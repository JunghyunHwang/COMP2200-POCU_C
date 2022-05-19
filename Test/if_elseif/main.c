int testReturn1(int n);
int testReturn2(int n);

int main(void)
{
    testReturn1(11);
    testReturn2(11);
    return 0;
}

int testReturn1(int n)
{
    if (n > 5) {
        return n;
    } else if (n > 10) {
        return n * 2;
    }

    return 0;
}

int testReturn2(int n)
{
    if (n > 5) {
        return n;
    }

    if (n > 10) {
        return n * 2;
    }

    return 0;
}
