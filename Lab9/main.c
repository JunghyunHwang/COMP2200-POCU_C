#include <stdio.h>
#include <assert.h>

#include "macros.h"

void test_slack(void)
{
    int temp_value = 318;
    int temp_index = 1;
    int temp_count = 0;

    int arr_int[20];
    unsigned int arr_unsigned_int[20];
    char arr_char[20];
    short arr_short[20];
    unsigned short arr_unsigned_short[20];
    float arr_float[20];
    double arr_double[20];

    int value_int = 319;
    unsigned int value_unsigned_int = -1;
    char value_char = 'c';
    short value_short = 319;
    unsigned short value_unsigned_short = -1;
    float value_float = 3.14f;
    double value_double = 3.14f;

    if (1 != 0) SET(arr_int, 0, 1, 318);
    assert(arr_int[0] == 318);

    if (1 != 0) SET(arr_int, 0, ++temp_count, 216); /* count에 표현식이 들어갈때 */
    assert(arr_int[0] == 216);

    if (1 != 0) SET(arr_int, --temp_index, 1, 318); /* index에 표현식이 들어갈때 */
    assert(arr_int[0] == 318);

    if (1 != 0) SET(arr_int, 0, 1, ++temp_value); /* value에 표현식이 들어갈때 1 */
    assert(arr_int[0] == 319);
    
    if (1 != 0) SET(arr_int, 0, 1, --temp_value); /* value에 표현식이 들어갈때 2 */
    assert(arr_int[0] == 318);

    if (1 != 0) SET(arr_int, 0, 1, --temp_value + 3); /* value에 표현식이 들어갈때 3 */
    assert(arr_int[0] == 320);

    printf("%d, %d, %d \n", temp_index, temp_count, temp_value);

    if (1 != 0) SET(arr_int, ++temp_index - 1, ++temp_count - 1, ++temp_value - 1); /* index, count, value 에 표현식이 들어갈때 */
    printf("%d \n", arr_int[0]);
    assert(arr_int[0] == 317);

    if (1 != 0) SET(arr_int, 0, 0, 123123123); /* count의 매개변수가 0알때 */
    assert(arr_int[0] == 317);

    if (1 != 0) SET(arr_char, 0, 1, value_char); /* char을 대입할때 */
    assert(arr_char[0] == 'c');

    if (1 != 0) SET(arr_short, 0, 1, value_short); /* short을 대입할때 */
    assert(arr_short[0] == 319);

    if (1 != 0) SET(arr_unsigned_short, 0, 1, value_unsigned_short); /* unsigned short을 대입할때 */
    assert(arr_unsigned_short[0] == 65535);

    if (1 != 0) SET(arr_int, 0, 1, value_int); /* int를 대입할때 */
    assert(arr_int[0] == 319);

    if (1 != 0) SET(arr_unsigned_int, 0, 1, value_unsigned_int); /* unsigned int를 대입할때 */
    assert(arr_unsigned_int[0] == 4294967295);

    if (1 != 0) SET(arr_float, 0, 1, value_float); /* float을 대입할때 */
    assert(arr_float[0] == 3.14f);

    if (1 != 0) SET(arr_double, 0, 1, value_double); /* double 대입할때 */
    assert(arr_double[0] == 3.14f);

    if (1 == 0) SET(arr_int, 0, 1, 1234); /* if-else 문 {}없고 SET 실행 */
    else SET(arr_int, 0, 1, 1235);
    assert(arr_int[0] == 1235);

    if (1 == 0) { /* if-else 문 {}있고 SET 실행 */
        SET(arr_int, 0, 20, 0);
    } else {
        SET(arr_int, 0, 1, 10000004);
    }
    assert(arr_int[0] == 10000004);
}

int main(void)
{
    #if 0
    int i = 0;
    int arr[20];
    int* curr;

    assert(10 == MAX(10, 5));
    assert(10.0f == MAX(10.0f, 5.0f));
    assert(10.0 == MAX(10.0, 5.0f));

    assert(5 == MIN(10, 5));
    assert(5 == MIN(10.0f, 5.0f));
    assert(5.0f == MIN(10.0, 5.0f));

    assert(1 == ABS(1));
    assert(1 == ABS(-1));
    assert(1.0f == ABS(1.0f));
    assert(1.0f == ABS(-1.0f));
    assert(1.0 == ABS(1.0));
    assert(1.0 == ABS(-1.0));

    curr = arr;

    RANGE(i, 1, 20) {
        *curr++ = i;
    }

    for (i = 1; i <= 20; i++) {
        assert(arr[i - 1] == i);
    }

    curr = arr;

    RANGE_DESC(i, 14, -5) {
        *curr++ = i;
    }

    for (i = 14; i >= -5; i--) {
        assert(arr[14 - i] == i);
    }

    SET(arr, 0, 20, 0);

    for (i = 0; i < 20; i++) {
        assert(arr[i] == 0);
    }

    SET(arr, 5, 5, 100);

    for (i = 0; i < 5; i++) {
        assert(arr[i] == 0);
    }

    for (i = 5; i < 10; i++) {
        assert(arr[i] == 100);
    }

    for (i = 10; i < 20; i++) {
        assert(arr[i] == 0);
    }
    #endif
    test_slack();

    puts("No prob");

    return 0;
}
