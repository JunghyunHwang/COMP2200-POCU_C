#define MULTIPLY(a, b) a * b
#define ADD(a, b) a + b;

void testMacro();
void testCharacter();

int main(void) 
{
    testMacro();
    testCharacter();
}

void testMacro()
{
    int x = MULTIPLY(2, ADD(MULTIPLY(3, 4), ADD(3, 2)));

    printf("%d", x);
}

void testCharacter()
{
    char word0 = "I love C";
    char* p0 = word0;
    char** word_p0 = &p;

    char word1 = "C++";
    char* p1 = word1;
    char** word_p1 = p1;

    **word_p0 = **word_p1;
    word_p0 = NULL;

    printf("%s\n", word0);
}
