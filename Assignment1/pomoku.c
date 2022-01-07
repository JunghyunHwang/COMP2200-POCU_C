#include "pomoku.h"

static int s_board_size[15][15];
static int s_black_score;
static int s_white_score;

void init_game(void)
{
	size_t i;
	size_t j;

	for (i = 0; i < get_row_count(); i++) {
		for (j = 0; j < get_column_count(); j++) {
			s_board_size[i][j] = -1;
		}
	}

	s_black_score = 0;
	s_white_score = 0;
}

size_t get_row_count(void)
{
	size_t row = sizeof(s_board_size) / sizeof(s_board_size[0]);
	return row;
}

size_t get_column_count(void)
{
	size_t column = sizeof(s_board_size[0]) / sizeof(int);
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
	}

	return score;
}

