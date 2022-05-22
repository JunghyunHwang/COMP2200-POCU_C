#include <stdio.h>
#include <string.h>
#include <assert.h>

int main(void)
{
	char str0[] = "ABCDE";
	char str1[] = "Bitch don't kill my vibe";
	char* copied;
	char* token;

	copied = strstr(str0, "BC");
	token = strtok(str1, " ");

	printf("str0 Address: %p\n", (void*)str0);
	printf("str1 Address: %p\n", (void*)str1);
	printf("copied Address: %p\n", (void*)copied);
	printf("token Address: %p\n", (void*)token);
	printf("%s \n", copied);

	return 0;
}
