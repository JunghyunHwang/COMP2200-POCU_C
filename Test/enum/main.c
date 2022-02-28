#include <stdio.h>

int main(int argc, char const *argv[])
{
	int i;
	printf("%d\n", argc);

	for (i = 0; i < argc; ++i) {
		printf("%s\n", argv[i] + 1);
	}

	return 0;
}
