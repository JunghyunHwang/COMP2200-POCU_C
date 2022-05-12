#include <stdio.h>
#include <assert.h>
#include "pomoku.h"

#define MAX_BOARD_SIZE (20)
#define MIN_BOARD_SIZE (10)
#define DEFAULT_BOARD_SIZE (15)

static int s_board[MAX_BOARD_SIZE][MAX_BOARD_SIZE];
static unsigned int s_valid_row_size;
static unsigned int s_valid_column_size;
static int s_player_score[2];

/*
void draw_board(void)
{
    unsigned int i;
    unsigned int j;

    for (i = 0; i < s_valid_row_size; ++i) {
        for (j = 0; j < s_valid_column_size; ++j) {
            switch (s_board[i][j]) {
            case COLOR_BLACK:
                printf("X");
                break;
            case COLOR_WHITE:
                printf("O");
                break;
            case COLOR_NULL:
                printf("+");
                break;
            default:
                assert(FALSE);
                break;
            }
        }
        puts("");
    }

    puts("===============================");
}
*/

void init_game(void)
{
    unsigned int i;
    unsigned int j;
    s_valid_row_size = DEFAULT_BOARD_SIZE;
    s_valid_column_size = DEFAULT_BOARD_SIZE;

    for (i = 0; i < MAX_BOARD_SIZE; i++) {
        for (j = 0; j < MAX_BOARD_SIZE; j++) {
            s_board[i][j] = COLOR_NULL;
        }
    }

    s_player_score[COLOR_BLACK] = 0; /* COLOR_BLACK */
    s_player_score[COLOR_WHITE] = 0; /* COLOR_WHITE */
}

unsigned int get_row_count(void)
{
    return s_valid_row_size;
}

unsigned int get_column_count(void)
{
    return s_valid_column_size;
}


int get_score(const color_t color)
{
    if (color != COLOR_BLACK && color != COLOR_WHITE) {
        return -1;
    }

    return s_player_score[color];
}

int get_color(const unsigned int row, const unsigned int col)
{
    return s_board[row][col];
}

int is_placeable(const unsigned int row, const unsigned int col)
{
    if (row >= s_valid_row_size || col >= s_valid_column_size || s_board[row][col] != COLOR_NULL) {
        return FALSE;
    } else {
        return TRUE;
    }
}

int place_stone(const color_t color, const unsigned int row, const unsigned int col)
{
    int valid_location;

    if (color != COLOR_BLACK && color != COLOR_WHITE) {
        return FALSE;
    }

    valid_location = is_placeable(row, col);

    if (valid_location == TRUE) {
        s_board[row][col] = color;
        count_stone(color, row, col);
        return valid_location;
    } else {
        return valid_location;
    }
}

void count_stone(const color_t color, const unsigned int row, const unsigned int col)
{
    int horizontal_score;
    int vertical_score;
    int left_diagonal_score;
    int right_diagonal_score;
    int total_score;

    horizontal_score = check_horizontal_chaining(color, row, col);
    vertical_score = check_vertical_chaining(color, row, col);
    left_diagonal_score = check_left_diagonal_chaining(color, row, col);
    right_diagonal_score = check_right_diagonal_chaining(color, row, col);
    total_score = horizontal_score + vertical_score + left_diagonal_score + right_diagonal_score;

    s_player_score[color] += total_score;
}

int check_horizontal_chaining(const color_t color, unsigned int row, unsigned int col)
{
    int chaining_stone_count = 1;

    chaining_stone_count += check_west_recursive(color, row, col);
    chaining_stone_count += check_east_recursive(color, row, col);

    if (chaining_stone_count < 5) {
        return 0;
    } else {
        return chaining_stone_count - 4;
    }
}

int check_west_recursive(const color_t color, const unsigned int row, unsigned int col)
{
    int chaining_stone_count = 0;

    if (col == 0 || s_board[row][col - 1] != color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_west_recursive(color, row, col - 1);
    return ++chaining_stone_count;
}

int check_east_recursive(const color_t color, const unsigned int row, unsigned int col)
{
    int chaining_stone_count = 0;

    if (col >= get_column_count() - 1 || s_board[row][col + 1] != (int)color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_east_recursive(color, row, col + 1);
    return ++chaining_stone_count;
}

int check_vertical_chaining(const color_t color, unsigned int row, unsigned int col)
{
    int chaining_stone_count = 1;

    chaining_stone_count += check_north_recursive(color, row, col);
    chaining_stone_count += check_south_recursive(color, row, col);

    if (chaining_stone_count < 5) {
        return 0;
    } else {
        return chaining_stone_count - 4;
    }
}

int check_north_recursive(const color_t color, unsigned int row, const unsigned int col)
{
    int chaining_stone_count = 0;

    if (row == 0 || s_board[row - 1][col] != (int)color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_north_recursive(color, row - 1, col);
    return ++chaining_stone_count;
}

int check_south_recursive(const color_t color, unsigned int row, const unsigned int col)
{
    int chaining_stone_count = 0;

    if (row >= get_row_count() - 1 || s_board[row + 1][col] != (int)color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_south_recursive(color, row + 1, col);
    return ++chaining_stone_count;
}

int check_left_diagonal_chaining(const color_t color, unsigned int row, unsigned int col)
{
    int chaining_stone_count = 1;

    chaining_stone_count += check_north_west_recursive(color, row, col);
    chaining_stone_count += check_south_east_recursive(color, row, col);

    if (chaining_stone_count < 5) {
        return 0;
    } else {
        return chaining_stone_count - 4;
    }
}

int check_north_west_recursive(const color_t color, unsigned int row, unsigned int col)
{
    int chaining_stone_count = 0;

    if (row == 0 || col == 0 || s_board[row - 1][col - 1] != (int)color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_north_west_recursive(color, row - 1, col - 1);
    return ++chaining_stone_count;
}

int check_south_east_recursive(const color_t color, unsigned int row, unsigned int col)
{
    int chaining_stone_count = 0;

    if (row >= get_row_count() - 1 || col >= get_column_count() - 1 || s_board[row + 1][col + 1] != (int)color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_south_east_recursive(color, row + 1, col + 1);
    return ++chaining_stone_count;
}

int check_right_diagonal_chaining(const color_t color, unsigned int row, unsigned int col)
{
    int chaining_stone_count = 1;

    chaining_stone_count += check_north_east_recursive(color, row, col);
    chaining_stone_count += check_south_west_recursive(color, row, col);

    if (chaining_stone_count < 5) {
        return 0;
    } else {
        return chaining_stone_count - 4;
    }
}

int check_north_east_recursive(const color_t color, unsigned int row, unsigned int col)
{
    int chaining_stone_count = 0;

    if (row == 0 || col >= get_column_count() - 1 || s_board[row - 1][col + 1] != (int)color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_north_east_recursive(color, row - 1, col + 1);
    return ++chaining_stone_count;
}

int check_south_west_recursive(const color_t color, unsigned int row, unsigned int col)
{
    int chaining_stone_count = 0;

    if (row >= get_row_count() - 1 || col == 0 || s_board[row + 1][col - 1] != (int)color) {
        return chaining_stone_count;
    }

    chaining_stone_count = check_south_west_recursive(color, row + 1, col - 1);
    return ++chaining_stone_count;
}

/* special move */

int check_valid_stone(const color_t color)
{
    if (color == COLOR_BLACK || color == COLOR_WHITE) {
        return TRUE;
    }

    return FALSE;
}

int insert_row(const color_t color, const unsigned int row)
{
    int require_score = 3;
    int new_row_array[MAX_BOARD_SIZE];
    int temp;
    unsigned int i;
    unsigned int j;

    if (check_valid_stone(color) == FALSE) {
        return FALSE;
    }

    if (s_player_score[color] < require_score || s_valid_row_size >= MAX_BOARD_SIZE || row > s_valid_row_size) {
        return FALSE;
    }

    for (i = 0; i < MAX_BOARD_SIZE; ++i) {
        new_row_array[i] = COLOR_NULL;
    }

    ++s_valid_row_size;

    for (i = row; i < s_valid_row_size; i++) {
        for (j = 0; j < s_valid_column_size; j++) {
            temp = s_board[i][j];
            s_board[i][j] = new_row_array[j];
            new_row_array[j] = temp;
        }
    }

    s_player_score[color] -= require_score;

    return TRUE;
}

int insert_column(const color_t color, const unsigned int col)
{
    int require_score = 3;
    int new_column_array[MAX_BOARD_SIZE];
    int temp;
    unsigned int i;
    unsigned int j;

    if (check_valid_stone(color) == FALSE) {
        return FALSE;
    }

    if (s_player_score[color] < require_score || s_valid_column_size >= MAX_BOARD_SIZE || col > s_valid_column_size) {
        return FALSE;
    }

    for (i = 0; i < MAX_BOARD_SIZE; ++i) {
        new_column_array[i] = COLOR_NULL;
    }

    ++s_valid_column_size;

    for (i = col; i < s_valid_column_size; i++) {
        for (j = 0; j < s_valid_row_size; j++) {
            temp = s_board[j][i];
            s_board[j][i] = new_column_array[j];
            new_column_array[j] = temp;
        }
    }

    s_player_score[color] -= require_score;

    return TRUE;
}

int remove_row(const color_t color, const unsigned int row)
{
    int require_score = 3;
    unsigned int i;
    unsigned int j;

    if (check_valid_stone(color) == FALSE) {
        return FALSE;
    }

    if (s_player_score[color] < require_score || s_valid_row_size <= MIN_BOARD_SIZE || row >= s_valid_row_size) {
        return FALSE;
    }

    --s_valid_row_size;

    for (i = row; i < s_valid_row_size; i++) {
        for (j = 0; j < s_valid_column_size; j++) {
            s_board[i][j] = s_board[i + 1][j];
        }
    }

    s_player_score[color] -= require_score;

    return TRUE;
}

int remove_column(const color_t color, const unsigned int col)
{
    int require_score = 3;
    unsigned int i;
    unsigned int j;

    if (check_valid_stone(color) == FALSE) {
        return FALSE;
    }

    if (s_player_score[color] < require_score || s_valid_column_size <= MIN_BOARD_SIZE || col >= s_valid_column_size) {
        return FALSE;
    }

    --s_valid_column_size;

    for (i = col; i < s_valid_column_size; i++) {
        for (j = 0; j < s_valid_row_size; j++) {
            s_board[j][i] = s_board[j][i + 1];
        }
    }

    s_player_score[color] -= require_score;

    return TRUE;
}

int swap_rows(const color_t color, const unsigned int row0, const unsigned int row1)
{
    int require_score = 2;
    int temp;
    unsigned int i;

    if (check_valid_stone(color) == FALSE) {
        return FALSE;
    }

    if (s_player_score[color] < require_score || row0 >= s_valid_row_size || row1 >= s_valid_row_size) {
        return FALSE;
    }

    for (i = 0; i < s_valid_column_size; i++) {
        temp = s_board[row0][i];
        s_board[row0][i] = s_board[row1][i];
        s_board[row1][i] = temp;
    }

    s_player_score[color] -= require_score;

    return TRUE;
}

int swap_columns(const color_t color, const unsigned int col0, const unsigned int col1)
{
    int require_score = 2;
    int temp;
    unsigned int i;

    if (check_valid_stone(color) == FALSE) {
        return FALSE;
    }

    if (s_player_score[color] < require_score || col0 >= s_valid_column_size || col1 >= s_valid_column_size) {
        return FALSE;
    }

    for (i = 0; i < s_valid_row_size; i++) {
        temp = s_board[i][col0];
        s_board[i][col0] = s_board[i][col1];
        s_board[i][col1] = temp;
    }

    s_player_score[color] -= require_score;

    return TRUE;
}

int copy_row(const color_t color, const unsigned int src, const unsigned int dst)
{
    int require_score = 4;
    unsigned int i;

    if (check_valid_stone(color) == FALSE) {
        return FALSE;
    }

    if (s_player_score[color] < require_score || src >= s_valid_row_size || dst >= s_valid_row_size) {
        return FALSE;
    }

    for (i = 0; i < s_valid_column_size; i++) {
        s_board[dst][i] = s_board[src][i];
    }

    s_player_score[color] -= require_score;

    return TRUE;
}

int copy_column(const color_t color, const unsigned int src, const unsigned int dst)
{
    int require_score = 4;
    unsigned int i;

    if (check_valid_stone(color) == FALSE) {
        return FALSE;
    }

    if (s_player_score[color] < require_score || src >= s_valid_column_size || dst >= s_valid_column_size) {
        return FALSE;
    }

    for (i = 0; i < s_valid_row_size; i++) {
        s_board[i][dst] = s_board[i][src];
    }

    s_player_score[color] -= require_score;

    return TRUE;
}
