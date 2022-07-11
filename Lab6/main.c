#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "character_deserializer.h"

void print_character_spec(character_v3_t* out_character);
void print_minions_spec(character_v3_t* out_character);

void test_superman();
void test_batman();
void test_flash();
void test_wonderwoman();
void test_no_minions();
void test_threeman();
void test_fourman();
void test_many_minions();
void test_power_man();
void test_long_long_man();
void test_fakeman();
void test_bugman();

int main(void)
{
    test_superman();
    test_batman();
    test_flash();
    test_wonderwoman();
    test_no_minions();
    test_threeman();
    test_fourman();
    test_many_minions();
    test_power_man();
    test_long_long_man();
    test_bugman();

    printf("No prob");

    return 0;
}

void print_character_spec(character_v3_t* out_character)
{
    puts("=======Character spec=======");
    printf("%13s%14s\n", "name:", out_character->name);
    printf("%13s%14u\n", "level:", out_character->level);
    printf("%13s%14u\n", "health:", out_character->health);
    printf("%13s%14u\n", "mana:", out_character->mana);
    printf("%13s%14u\n", "strength:", out_character->strength);
    printf("%13s%14u\n", "dexterity:", out_character->dexterity);
    printf("%13s%14u\n", "intelligence:", out_character->intelligence);
    printf("%13s%14u\n", "armour:", out_character->armour);
    printf("%13s%14u\n", "evasion:", out_character->evasion);
    printf("%13s%14u\n", "fire_res:", out_character->elemental_resistance.fire);
    printf("%13s%14u\n", "cold_res:", out_character->elemental_resistance.cold);
    printf("%13s%14u\n", "lightning:", out_character->elemental_resistance.lightning);
    printf("%13s%14u\n", "leadership:", out_character->leadership);
    printf("%13s%14u\n", "minion_count", out_character->minion_count);
    puts("===========================");
}

void print_minions_spec(character_v3_t* out_character)
{
    if (out_character->minion_count == 0) {
        puts("=======NO Minions=========");
        return;
    }

    puts("========Minions spec========");
    int i;
    for (i = 0; i < out_character->minion_count; ++i) {
        printf("%13s%14s\n", "name:", out_character->minions[i].name);
        printf("%13s%14u\n", "health:", out_character->minions[i].health);
        printf("%13s%14u\n", "strength:", out_character->minions[i].strength);
        printf("%13s%14u\n", "defence:", out_character->minions[i].defence);
    }
    puts("===========================");
}


void test_superman()
{
    character_v3_t superman_v1;
    int version;

    version = get_character("Superman_v1.txt", &superman_v1);
    assert(version == 1);
    print_character_spec(&superman_v1);
    assert(strcmp(superman_v1.name, "player_15") == 0);
    assert(superman_v1.level == 10);
    assert(superman_v1.health == 100);
    assert(superman_v1.mana == 25);
    assert(superman_v1.strength == 28);
    assert(superman_v1.dexterity == 20);
    assert(superman_v1.intelligence == 15);
    assert(superman_v1.armour == 14);
    assert(superman_v1.evasion == 10);
    assert(superman_v1.leadership == 1);
    assert(superman_v1.minion_count == 0);
    assert(superman_v1.elemental_resistance.fire == 1);
    assert(superman_v1.elemental_resistance.cold == 1);
    assert(superman_v1.elemental_resistance.lightning == 1);
}

void test_batman()
{
    character_v3_t batman_v2;
    int version;

    version = get_character("Batman_v2.txt", &batman_v2);
    print_character_spec(&batman_v2);
    assert(version == 2);
    assert(strcmp(batman_v2.name, "Batman_v2") == 0);
    assert(batman_v2.level == 25);
    assert(batman_v2.health == 130);
    assert(batman_v2.mana == 50);
    assert(batman_v2.strength == 30);
    assert(batman_v2.dexterity == 28);
    assert(batman_v2.intelligence == 40);
    assert(batman_v2.armour == 20);
    assert(batman_v2.evasion == 20);
    assert(batman_v2.leadership == 2);
    assert(batman_v2.minion_count == 0);
    assert(batman_v2.elemental_resistance.fire == 3);
    assert(batman_v2.elemental_resistance.cold == 3);
    assert(batman_v2.elemental_resistance.lightning == 3);
}

void test_flash()
{
    character_v3_t flash_v3;

    int version = get_character("Flash_v3.txt", &flash_v3);
    print_character_spec(&flash_v3);
    assert(version == 3);
    assert(strcmp(flash_v3.name, "Flash_v3") == 0);
    assert(flash_v3.level == 50);
    assert(flash_v3.health == 280);
    assert(flash_v3.mana == 55);
    assert(flash_v3.strength == 50);
    assert(flash_v3.dexterity == 85);
    assert(flash_v3.intelligence == 30);
    assert(flash_v3.armour == 20);
    assert(flash_v3.evasion == 45);
    assert(flash_v3.leadership == 12);
    assert(flash_v3.minion_count == 0);
    assert(flash_v3.elemental_resistance.fire == 10);
    assert(flash_v3.elemental_resistance.cold == 10);
    assert(flash_v3.elemental_resistance.lightning == 10);
}

void test_wonderwoman()
{
    character_v3_t wonderwoman_v3;

    int version = get_character("Wonderwoman_v3.txt", &wonderwoman_v3);
    print_character_spec(&wonderwoman_v3);
    assert(version == 3);
    assert(strcmp(wonderwoman_v3.name, "Wonderwoman_v3") == 0);
    assert(wonderwoman_v3.level == 55);
    assert(wonderwoman_v3.health == 320);
    assert(wonderwoman_v3.mana == 75);
    assert(wonderwoman_v3.strength == 75);
    assert(wonderwoman_v3.dexterity == 55);
    assert(wonderwoman_v3.intelligence == 35);
    assert(wonderwoman_v3.armour == 45);
    assert(wonderwoman_v3.evasion == 30);
    assert(wonderwoman_v3.leadership == 20);
    assert(wonderwoman_v3.minion_count == 2);
    assert(wonderwoman_v3.elemental_resistance.fire == 20);
    assert(wonderwoman_v3.elemental_resistance.cold == 22);
    assert(wonderwoman_v3.elemental_resistance.lightning == 15);

    assert(strcmp(wonderwoman_v3.minions[0].name, "amazoness") == 0);
    assert(wonderwoman_v3.minions[0].health == 50);
    assert(wonderwoman_v3.minions[0].strength == 15);
    assert(wonderwoman_v3.minions[0].defence == 5);

    assert(strcmp(wonderwoman_v3.minions[1].name, "valkyrie") == 0);
    assert(wonderwoman_v3.minions[1].health == 45);
    assert(wonderwoman_v3.minions[1].strength == 20);
    assert(wonderwoman_v3.minions[1].defence == 4);
}

void test_no_minions()
{
    character_v3_t no_minions_wonderwoman_v3;

    int version = get_character("No_Minions_Wonderwoman_v3.txt", &no_minions_wonderwoman_v3);
    print_character_spec(&no_minions_wonderwoman_v3);
    assert(version == 3);
    assert(strcmp(no_minions_wonderwoman_v3.name, "Wonderwoman_v3") == 0);
    assert(no_minions_wonderwoman_v3.level == 55);
    assert(no_minions_wonderwoman_v3.health == 320);
    assert(no_minions_wonderwoman_v3.mana == 75);
    assert(no_minions_wonderwoman_v3.strength == 75);
    assert(no_minions_wonderwoman_v3.dexterity == 55);
    assert(no_minions_wonderwoman_v3.intelligence == 35);
    assert(no_minions_wonderwoman_v3.armour == 45);
    assert(no_minions_wonderwoman_v3.evasion == 30);
    assert(no_minions_wonderwoman_v3.leadership == 20);
    assert(no_minions_wonderwoman_v3.minion_count == 0);
    assert(no_minions_wonderwoman_v3.elemental_resistance.fire == 20);
    assert(no_minions_wonderwoman_v3.elemental_resistance.cold == 22);
    assert(no_minions_wonderwoman_v3.elemental_resistance.lightning == 15);
}

void test_many_minions()
{
    character_v3_t many_minions_iron_man_v3;

    int version = get_character("Many_Minions_Ironman.txt", &many_minions_iron_man_v3);
    print_character_spec(&many_minions_iron_man_v3);
    print_minions_spec(&many_minions_iron_man_v3);
    assert(version == 3);
    assert(strcmp(many_minions_iron_man_v3.name, "Iron_man_v3") == 0);
    assert(many_minions_iron_man_v3.level == 55);
    assert(many_minions_iron_man_v3.health == 320);
    assert(many_minions_iron_man_v3.mana == 75);
    assert(many_minions_iron_man_v3.strength == 75);
    assert(many_minions_iron_man_v3.dexterity == 55);
    assert(many_minions_iron_man_v3.intelligence == 35);
    assert(many_minions_iron_man_v3.armour == 45);
    assert(many_minions_iron_man_v3.evasion == 30);
    assert(many_minions_iron_man_v3.leadership == 20);
    assert(many_minions_iron_man_v3.minion_count == 5);
    assert(many_minions_iron_man_v3.elemental_resistance.fire == 20);
    assert(many_minions_iron_man_v3.elemental_resistance.cold == 22);
    assert(many_minions_iron_man_v3.elemental_resistance.lightning == 15);

    assert(strcmp(many_minions_iron_man_v3.minions[0].name, "amazoness") == 0);
    assert(many_minions_iron_man_v3.minions[0].health == 50);
    assert(many_minions_iron_man_v3.minions[0].strength == 15);
    assert(many_minions_iron_man_v3.minions[0].defence == 5);

    assert(strcmp(many_minions_iron_man_v3.minions[1].name, "valkyrie") == 0);
    assert(many_minions_iron_man_v3.minions[1].health == 45);
    assert(many_minions_iron_man_v3.minions[1].strength == 20);
    assert(many_minions_iron_man_v3.minions[1].defence == 4);

    assert(strcmp(many_minions_iron_man_v3.minions[2].name, "vegil") == 0);
    assert(many_minions_iron_man_v3.minions[2].health == 200000);
    assert(many_minions_iron_man_v3.minions[2].strength == 38);
    assert(many_minions_iron_man_v3.minions[2].defence == 3);
}

void test_power_man()
{
    character_v3_t longman_v1;
    int version;

    version = get_character("Powerman_v1.txt", &longman_v1);
    assert(version == 1);
    print_character_spec(&longman_v1);
    assert(strcmp(longman_v1.name, "player_15") == 0);
    assert(longman_v1.level == 10);
    assert(longman_v1.health == 100);
    assert(longman_v1.mana == 25);
    assert(longman_v1.strength == 28);
    assert(longman_v1.dexterity == 1000000);
    assert(longman_v1.intelligence == 15);
    assert(longman_v1.armour == 1200000);
    assert(longman_v1.evasion == 500000);
    assert(longman_v1.leadership == 1);
    assert(longman_v1.minion_count == 0);
    assert(longman_v1.elemental_resistance.fire == 100000);
    assert(longman_v1.elemental_resistance.cold == 100000);
    assert(longman_v1.elemental_resistance.lightning == 100000);
}

void test_long_long_man()
{
    character_v3_t longlongman_v3;
    int version;

    version = get_character("LongLongman_v3.txt", &longlongman_v3);
    assert(version == 3);
    print_character_spec(&longlongman_v3);
    print_minions_spec(&longlongman_v3);
    //assert(strcmp(longlongman_v3.name, "Looooooooooooooooooooooooooooooooooooooooooooooman") == 0);
    assert(longlongman_v3.level == 55);
    assert(longlongman_v3.health == 320);
    assert(longlongman_v3.mana == 75);
    assert(longlongman_v3.strength == 75);
    assert(longlongman_v3.dexterity == 55);
    assert(longlongman_v3.intelligence == 35);
    assert(longlongman_v3.armour == 45);
    assert(longlongman_v3.evasion == 30);
    assert(longlongman_v3.leadership == 20);
    assert(longlongman_v3.minion_count == 6);
    assert(longlongman_v3.elemental_resistance.fire == 20);
    assert(longlongman_v3.elemental_resistance.cold == 22);
    assert(longlongman_v3.elemental_resistance.lightning == 15);

    //assert(strcmp(longlongman_v3.minions[0].name, "smooooooooooooooooooooooooooooooooooooooooooooooke") == 0);
    assert(longlongman_v3.minions[0].health == 100000000);
    assert(longlongman_v3.minions[0].strength == 30);
    assert(longlongman_v3.minions[0].defence == 30000);

    assert(strcmp(longlongman_v3.minions[1].name, "sledge") == 0);
    assert(longlongman_v3.minions[1].health == 200);
    assert(longlongman_v3.minions[1].strength == 500000);
    assert(longlongman_v3.minions[1].defence == 200000);

    assert(strcmp(longlongman_v3.minions[2].name, "amazoness") == 0);
    assert(longlongman_v3.minions[2].health == 50);
    assert(longlongman_v3.minions[2].strength == 15);
    assert(longlongman_v3.minions[2].defence == 5);
}

void test_threeman()
{
    character_v3_t threeman_v3;

    int version = get_character("Three_Minions_v3.txt", &threeman_v3);
    print_character_spec(&threeman_v3);
    print_minions_spec(&threeman_v3);
    assert(version == 3);
    assert(strcmp(threeman_v3.name, "Threeman_v3") == 0);
    assert(threeman_v3.level == 55);
    assert(threeman_v3.health == 320);
    assert(threeman_v3.mana == 75);
    assert(threeman_v3.strength == 75);
    assert(threeman_v3.dexterity == 55);
    assert(threeman_v3.intelligence == 35);
    assert(threeman_v3.armour == 45);
    assert(threeman_v3.evasion == 30);
    assert(threeman_v3.leadership == 20);
    assert(threeman_v3.minion_count == 3);
    assert(threeman_v3.elemental_resistance.fire == 20);
    assert(threeman_v3.elemental_resistance.cold == 22);
    assert(threeman_v3.elemental_resistance.lightning == 15);

    assert(strcmp(threeman_v3.minions[0].name, "amazoness") == 0);
    assert(threeman_v3.minions[0].health == 50);
    assert(threeman_v3.minions[0].strength == 15);
    assert(threeman_v3.minions[0].defence == 5);

    assert(strcmp(threeman_v3.minions[1].name, "valkyrie") == 0);
    assert(threeman_v3.minions[1].health == 45);
    assert(threeman_v3.minions[1].strength == 20);
    assert(threeman_v3.minions[1].defence == 4);

    assert(strcmp(threeman_v3.minions[2].name, "popo") == 0);
    assert(threeman_v3.minions[2].health == 30);
    assert(threeman_v3.minions[2].strength == 20);
    assert(threeman_v3.minions[2].defence == 7);
}
void test_fourman()
{
    character_v3_t fourman_v3;

    int version = get_character("Four_Minions_v3.txt", &fourman_v3);
    print_character_spec(&fourman_v3);
    print_minions_spec(&fourman_v3);
    assert(version == 3);
    assert(strcmp(fourman_v3.name, "Fourman_v3") == 0);
    assert(fourman_v3.level == 55);
    assert(fourman_v3.health == 320);
    assert(fourman_v3.mana == 75);
    assert(fourman_v3.strength == 75);
    assert(fourman_v3.dexterity == 55);
    assert(fourman_v3.intelligence == 35);
    assert(fourman_v3.armour == 45);
    assert(fourman_v3.evasion == 30);
    assert(fourman_v3.leadership == 20);
    assert(fourman_v3.minion_count == 4);
    assert(fourman_v3.elemental_resistance.fire == 20);
    assert(fourman_v3.elemental_resistance.cold == 22);
    assert(fourman_v3.elemental_resistance.lightning == 15);

    assert(strcmp(fourman_v3.minions[0].name, "amazoness") == 0);
    assert(fourman_v3.minions[0].health == 50);
    assert(fourman_v3.minions[0].strength == 15);
    assert(fourman_v3.minions[0].defence == 5);

    assert(strcmp(fourman_v3.minions[1].name, "valkyrie") == 0);
    assert(fourman_v3.minions[1].health == 45);
    assert(fourman_v3.minions[1].strength == 20);
    assert(fourman_v3.minions[1].defence == 4);

    assert(strcmp(fourman_v3.minions[2].name, "popo") == 0);
    assert(fourman_v3.minions[2].health == 30);
    assert(fourman_v3.minions[2].strength == 20);
    assert(fourman_v3.minions[2].defence == 7);
}

void test_fakeman()
{
    character_v3_t fakeman_v3;

    int version = get_character("Fakeman_v2.txt", &fakeman_v3);
    print_character_spec(&fakeman_v3);
    assert(version == 3);
    assert(strcmp(fakeman_v3.name, "Fakeman_v3") == 0);
    assert(fakeman_v3.level == 55);
    assert(fakeman_v3.health == 320);
    assert(fakeman_v3.mana == 75);
    assert(fakeman_v3.strength == 75);
    assert(fakeman_v3.dexterity == 55);
    assert(fakeman_v3.intelligence == 35);
    assert(fakeman_v3.armour == 45);
    assert(fakeman_v3.evasion == 30);
    assert(fakeman_v3.leadership == 20);
    assert(fakeman_v3.minion_count == 0);
    assert(fakeman_v3.elemental_resistance.fire == 20);
    assert(fakeman_v3.elemental_resistance.cold == 22);
    assert(fakeman_v3.elemental_resistance.lightning == 15);
}

void test_bugman()
{
    character_v3_t bugman_v1;

    int version = get_character("Bugman_v1.txt", &bugman_v1);
    print_character_spec(&bugman_v1);
    assert(version == 1);
    assert(strcmp(bugman_v1.name, "player_4294967295") == 0);
    assert(bugman_v1.level == 4294967295);
    assert(bugman_v1.health == 4294967295);
    assert(bugman_v1.mana == 4294967295);
    assert(bugman_v1.strength == 4294967295);
    assert(bugman_v1.dexterity == 4294967295);
    assert(bugman_v1.intelligence == 4294967295);
    assert(bugman_v1.armour == 4294967295);
    assert(bugman_v1.evasion == 2147483647);
    assert(bugman_v1.leadership == 429496729);
    assert(bugman_v1.minion_count == 0);
    assert(bugman_v1.elemental_resistance.fire == 357913941);
    assert(bugman_v1.elemental_resistance.cold == 357913941);
    assert(bugman_v1.elemental_resistance.lightning == 357913941);
}
