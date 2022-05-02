#include <stdio.h>
#include <stdlib.h>

#define MAGIC \
    BLACK_MAGIC(int, x) \
    BLACK_MAGIC(int, y) \
    BLACK_MAGIC(int, z) \

typedef struct {
#define BLACK_MAGIC(t, n) t my_##n;
    MAGIC
#undef BLACK_MAGIC
} my_type_t;

#define other_type_t my_type_t

int main(void)
{
    other_type_t t;

    t.my_x = 2;
    t.my_y = 3;
    t.my_z = 5;

    printf("%d", t.my_x + t.my_y + t.my_z);
    return 0;
}
