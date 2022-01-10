#include <limits.h>
#include <stddef.h>
#include <stdio.h>
#define ARRAY_LENGTH(arr) (sizeof(arr) / sizeof(arr[0]));

int get_index_of(const int numbers[], const size_t element_count, const int num)
{
    int result = -1;
    size_t i;

    for (i = 0; i < element_count; i++) {
        if (numbers[i] == num) {
            result = i;
            break;
        }
    }

    return result;
}

int get_last_index_of(const int numbers[], const size_t element_count, const int num)
{
    int result = -1;
    size_t i;

    for (i = 0; i < element_count; i++) {
        if (numbers[i] == num) {
            result = i;
        }
    }

    return result;
}

int get_max_index(const int numbers[], const size_t element_count)
{
    int result = -1;
    size_t i;
    int max = INT_MIN + 1;

    if (element_count == 0) {
        return result;
    }
	
    for (i = 0; i < element_count; i++) {
        if (numbers[i] > max) {
            max = numbers[i];
        }
    }

    result = get_index_of(numbers, element_count, max);
	
    return result;
}

int get_min_index(const int numbers[], const size_t element_count)
{
    int result = -1;
    size_t i;
    int min = INT_MAX;

    if (element_count == 0) {
        return result;
    }

    for (i = 0; i < element_count; i++) {
        if (numbers[i] < min) {
            min = numbers[i];
        }
    }

    result = get_index_of(numbers, element_count, min);

    return result;
}

int is_all_positive(const int numbers[], const size_t element_count)
{
    int result = 0;
    size_t i;

    if (element_count == 0) {
        return result;
    }

    result = 1;

    for (i = 0; i < element_count; i++) {
        if (numbers[i] < 0) {
            result = 0;
            break;
        }
    }

    return result;
}

int has_even(const int numbers[], const size_t element_count)
{
    int result = 0;
    size_t i;

    if (element_count == 0) {
        return result;
    }

    for (i = 0; i < element_count; i++) {
        if (numbers[i] % 2 == 0) {
            result = 1;
            break;
        }
    }

    return result;
}

int insert(int numbers[], const size_t element_count, const int num, const size_t pos)
{
    int result = 0;
    int temp;
    int input_value = num;
    int insert_element_count = 1;
    size_t i;

    if (element_count < pos) {
        return result;
    }

    for (i = pos; i < element_count + insert_element_count; i++) {
        temp = numbers[i];
        numbers[i] = input_value;
        input_value = temp;
    }

    result = 1;
    return result;
}

int remove_at(int numbers[], const size_t element_count, const size_t index)
{
    int result = 0;
    size_t i;

    if (element_count == 0 || element_count <= index) {
        return result;
    }

    for (i = index; i < element_count; i++) {
        numbers[i] = i == element_count - 1 ? INT_MIN : numbers[i + 1];
    }

    result = 1;
    return result;
}
