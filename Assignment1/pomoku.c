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

size_t get_row_count(void)
{
	size_t row = sizeof(s_board) / sizeof(s_board[0]);
	return row;
}

size_t get_column_count(void)
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
		return valid_location;
	} else {
		return valid_location;
	}
}

void counting_stone(const color_t color, const size_t row, const size_t col)
{
	int horizontal_score;
	/*
	int vertical_score;
	int lef_diagonal_score;
	int right_diagonal_score;
	*/

	int total_score = 0;
	horizontal_score = check_horizontal(color, row, col);
	/*
	vertical_score = check_vertical(color, row, col);
	left_diagonal_score = check_left_diagonal(color, row, col);
	right_diagonal_score = check_right_diagonal(color, row, col);
	total_score = horizontal_score + vertical_score + left_diagonal_score + right_diagonal_score;
	*/
	total_score += horizontal_score; /* Test code */
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
	int chaining_stone_count = 0;
	chaining_stone_count += check_west_recursive(color, row, col);
	/* chaining_stone_count += check_east_recursive(color, row, col, 0); */

	if (chaining_stone_count < 5) {
		return 0;
	} else {
		return chaining_stone_count % 5 + 1;
	}
}

int check_west_recursive(const color_t color, const size_t row, size_t col)
{
	int chaining_stone_count = 0;

	if (s_board[row][col] != color) {
		return chaining_stone_count;
	}

	--col;

	if (col < 0) {
		return chaining_stone_count;
	}

	chaining_stone_count = check_west_recursive(color, row, col);
	return ++chaining_stone_count;
}
