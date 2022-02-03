#include <stdio.h>
#include "translate.h"

int translate(int argc, const char** argv)
{
	char c;

	while ((c = getchar()) != EOF) {
		printf("%c", c);
	}

	return TRUE;
}
