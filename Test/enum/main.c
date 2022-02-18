#include <stdio.h>

typedef enum {
	CHAMPION_ARI,
	CHAMPION_leesin,
	CHAMPION_nasus,
	CHAMPION_vayne,
	CHAMPION_blitz
} champ_t;

typedef enum {
	ROLE_MID,
	ROLE_juggle,
	ROLE_TOP,
	ROLE_BOTTOM,
	ROLE_SUPPORTER,
	ROLE_OBSERTVER
} role_t;

void no_intelligence_enum(void)
{
    champ_t my_champ = CHAMPION_ARI;
    role_t my_role = ROLE_MID;

    printf("My champ is %d\n", my_champ);
    printf("My role is %d\n", my_role);

    my_champ = ROLE_TOP;
    printf("My champ is %d\n", my_champ);
    my_champ = ROLE_OBSERTVER;
    printf("My champ is %d\n", my_champ);
}

int main(void)
{
    no_intelligence_enum();

    return 0;
}
