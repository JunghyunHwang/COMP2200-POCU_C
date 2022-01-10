#include <stdio.h>
#include <assert.h>
#include "pomoku.h"

static int s_board[15][15];
static int s_black_score;
static int s_white_score;

void init_game(void)
{
    size_t i;
    size_t j;

    for (i = 0; i < get_row_count(); i++) {
        for (j = 0; j < get_column_count(); j++) {
            s_board[i][j] = -1;
        }
    }

    s_black_score = 0;
    s_white_score = 0;
}

size_t get_row_count(void) /* 언제나 현재 가능한 배열 길이 반환 */
{
    size_t row = sizeof(s_board) / sizeof(s_board[0]);
    return row;
}

size_t get_column_count(void) /* 언제나 현재 가능한 배열 길이 반환 */
{
    size_t column = sizeof(s_board[0]) / sizeof(int);
    return column;
}


int get_score(const color_t color)
{
    int score;

    switch(color) {
        case COLOR_BLACK:
            score = s_black_score;
        break;
        case COLOR_WHITE:
            score = s_white_score;
        break;
        default:
            score = -1;
        break;
    }

    return score;
}

int get_color(const size_t row, const size_t col)
{
    int result = s_board[row][col];

    return result;
}

int is_placeable(const size_t row, const size_t col)
{
    if (s_board[row][col] == -1) {
        return 1;
    } else {
        return 0;
    }
}

int place_stone(const color_t color, const size_t row, const size_t col)
{
    int valid_location;

    if (color != 1 && color != 0) {
        return 0;
    }

    valid_location = is_placeable(row, col);

    if (valid_location) {
        s_board[row][col] = color;
        counting_stone(color, row, col);
        printf("score is : %d \n", s_black_score);
        return valid_location;
    } else {
        return valid_location;
    }
}

void counting_stone(const color_t color, const size_t row, const size_t col)
{
    int horizontal_score;
    int vertical_score;
    int left_diagonal_score;
    int right_diagonal_score;
    int total_score = 0;

    horizontal_score = check_horizontal(color, row, col);
    vertical_score = check_vertical(color, row, col);
    left_diagonal_score = check_left_diagonal(color, row, col);
    right_diagonal_score = check_right_diagonal(color, row, col);
    total_score = horizontal_score + vertical_score + left_diagonal_score + right_diagonal_score;

    switch(color) {
        case COLOR_BLACK:
            s_black_score += total_score;
        break;
        case COLOR_WHITE:
            s_white_score += total_score;
        break;
        default:
            assert(0);
        break;
    }
}

int check_horizontal(const color_t color, size_t row, size_t col)
{
    int chaining_stone_count = 1;
    chaining_stone_count += check_west_recursive(color, row, col);
    printf("chaining stone count : %d \n", chaining_stone_count);
    chaining_stone_count += check_east_recursive(color, row, col + 1);
    printf("chaining stone count : %d \n", chaining_stone_count);

    if (chaining_stone_count < 5) {
        return 0;
    } else {
        return chaining_stone_count % 5 + 1;
    }
}

int check_west_recursive(const color_t color, const size_t row, size_t col)
{
    int chaining_stone_count = 0;

    if (col == 0 || s_board[row][col - 1] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_west_recursive(color, row, col - 1);
    return ++chaining_stone_count;
}

int check_east_recursive(const color_t color, const size_t row, size_t col)
{
    int chaining_stone_count = 0;

    if (col >= get_column_count() - 1 || s_board[row][col + 1] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_west_recursive(color, row, col + 1);
    return ++chaining_stone_count;
}

int check_vertical(const color_t color, size_t row, size_t col)
{
    int chaining_stone_count = 1;
    chaining_stone_count += check_north_recursive(color, row, col);
    chaining_stone_count += check_south_recursive(color, row + 1, col);

    if (chaining_stone_count < 5) {
        return 0;
    } else {
        return chaining_stone_count % 5 + 1;
    }
}

int check_north_recursive(const color_t color, size_t row, const size_t col)
{
    int chaining_stone_count = 0;

    if (row == 0 || s_board[row - 1][col] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_north_recursive(color, row - 1, col);
    return ++chaining_stone_count;
}

int check_south_recursive(const color_t color, size_t row, const size_t col)
{
    int chaining_stone_count = 0;

    if (row >= get_row_count() - 1 || s_board[row + 1][col] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_south_recursive(color, row + 1, col);
    return ++chaining_stone_count;
}

int check_left_diagonal(const color_t color, size_t row, size_t col)
{
    int chaining_stone_count = 1;
    chaining_stone_count += check_north_west_recursive(color, row, col);
    chaining_stone_count += check_south_east_recursive(color, row, col);

    if (chaining_stone_count < 5) {
        return 0;
    } else {
        return chaining_stone_count % 5 + 1;
    }
}

int check_north_west_recursive(const color_t color, size_t row, size_t col)
{
    int chaining_stone_count = 0;

    if (row == 0 || col == 0 || s_board[row - 1][col - 1] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_north_west_recursive(color, row - 1, col - 1);
    return ++chaining_stone_count;
}

int check_south_east_recursive(const color_t color, size_t row, size_t col)
{
    int chaining_stone_count = 0;

    if (row >= get_row_count() - 1 || col >= get_column_count() - 1) {
        return chaining_stone_count;
    } else if (s_board[row + 1][col + 1] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_south_east_recursive(color, row + 1, col + 1);
    return ++chaining_stone_count;
}

int check_right_diagonal(const color_t color, size_t row, size_t col)
{
    int chaining_stone_count = 1;
    chaining_stone_count += check_north_east_recursive(color, row, col);
    chaining_stone_count += check_south_west_recursive(color, row, col);

    if (chaining_stone_count < 5) {
        return 0;
    } else {
        return chaining_stone_count % 5 + 1;
    }
}

int check_north_east_recursive(const color_t color, size_t row, size_t col)
{
    int chaining_stone_count = 0;

    if (row == 0 || col >= get_column_count() - 1) {
        return chaining_stone_count;
    } else if (s_board[row - 1][col + 1] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_north_east_recursive(color, row - 1, col + 1);
    return ++chaining_stone_count;
}

int check_south_west_recursive(const color_t color, size_t row, size_t col)
{
    int chaining_stone_count = 0;

    if (row >= get_row_count() - 1 || col == 0) {
        return chaining_stone_count;
    } else if (s_board[row + 1][col - 1] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_south_west_recursive(color, row + 1, col - 1);
    return ++chaining_stone_count;
}
