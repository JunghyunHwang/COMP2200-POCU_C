#include <limits.h>
#include <stddef.h>
#include <stdio.h>

int get_index_of(const int numbers[], const size_t element_count, const int num)
{
    int result_index = -1;
    size_t i;

    for (i = 0; i < element_count; i++) {
        if (numbers[i] == num) {
            result_index = i;
            break;
        }
    }

    return result_index;
}

int get_last_index_of(const int numbers[], const size_t element_count, const int num)
{
    int result_index = -1;
    size_t i;

    for (i = element_count - 1; i >= 0; i--) {
        if (numbers[i] == num) {
            result_index = i;
            break;
        }
    }

    return result_index;
}

int get_max_index(const int numbers[], const size_t element_count)
{
    int result_index = -1;
    int max;
    size_t i;

    if (element_count == 0) {
        return result_index;
    }

    max = numbers[0];
    result_index = 0;
	
    for (i = 1; i < element_count; i++) {
        if (numbers[i] > max) {
            max = numbers[i];
            result_index = i;
        }
    }
	
    return result_index;
}

int get_min_index(const int numbers[], const size_t element_count)
{
    int result_index = -1;
    int min;
    size_t i;

    if (element_count == 0) {
        return result_index;
    }

    min = numbers[0];
    result_index = 0;

    for (i = 1; i < element_count; i++) {
        if (numbers[i] < min) {
            min = numbers[i];
            result_index = i;
        }
    }

    return result_index;
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
    int insert_element_count = 1;
    int insert_element_value = num;
    size_t i;

    if (element_count < pos) {
        return result;
    }

    for (i = pos; i < element_count + insert_element_count; i++) {
        temp = numbers[i];
        numbers[i] = insert_element_value ;
        insert_element_value = temp;
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
        numbers[i] = (i == element_count - 1) ? INT_MIN : numbers[i + 1];
    }

    result = 1;

    return result;
}
