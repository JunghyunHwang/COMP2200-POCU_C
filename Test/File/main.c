#include <stdio.h>
#include <errno.h>

int main(void)
{
	FILE* stream;

	stream = fopen("POCU.txt", "r");

	if (stream == NULL) {
		perror("fail to file open");
		goto file_close;
	}

file_close:
	printf("Close file\n");
	fclose(stream);

	return 0;
}
