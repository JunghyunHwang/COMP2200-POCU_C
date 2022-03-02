#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	size_t i;
	char*** paragraph = NULL;
	char** sentence1 = NULL;
	char* sentence2[3];

	char word1[] = "Hi";
	char word2[] = "you can call me";
	char word3[] = "ja hwang";

	char word4[] = "Hello, there";
	char word5[] = "my name is";
	char word6[] = "Baro";

	for (i = 0; i < 3; ++i) {
		if (i == 0) {
			sentence1 = realloc(sentence1, (i + 1) * sizeof(char*));
			sentence1[i] = word1;
		}
		else if (i == 1) {
			sentence1 = realloc(sentence1, (i + 1) * sizeof(char*));
			sentence1[i] = word2;
		}
		else {
			sentence1 = realloc(sentence1, (i + 1) * sizeof(char*));
			sentence1[i] = word3;
		}
	}

	sentence2[0] = word4;
	sentence2[1] = word5;
	sentence2[2] = word6;

	printf("sentence1 size: %d\n", strlen(*sentence1));
	paragraph = realloc(paragraph, 2 * sizeof(char*));

	printf("paragraph size: %d\n", strlen(paragraph));

	free(sentence1);
	free(paragraph);

	return 0;
}
