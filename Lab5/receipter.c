#include <stdio.h>
#include <string.h>
#include "receipter.h"

#define RESTAURANT_NAME ("Charles' Seafood")
#define DELIMTER_LINE1 ("--------------------------------------------------")
#define DELIMTER_LINE2 ("==================================================")
#define MAX_CHARACTER_COUNT_PER_LINE (50)
#define MAX_MESSAGE_COUNT (75)
#define MAX_ITEM_NAME_COUNT (26)
#define MAX_ORDER_COUNT (10)
#define TAX_RATE (0.05)
#define TAX_NUMBER ("Tax#-51234")

static double s_subtotal = 0;
static char s_order_list[MAX_ORDER_COUNT][MAX_ITEM_NAME_COUNT];
static double s_item_price[MAX_ORDER_COUNT];
static int s_today_order_count = 0;
static int s_number_of_orders = 0;
static double s_tip = 0;
static char s_message[MAX_MESSAGE_COUNT + 1] = "";
static int s_msg_len;

int add_item(const char* name, double price)
{
    size_t i;

    if (s_number_of_orders >= MAX_ORDER_COUNT) {
        return FALSE;
    }

    i = 0;

    while (*name != '\0' && i < MAX_ITEM_NAME_COUNT - 1) {
        s_order_list[s_number_of_orders][i] = *name;

        ++name;
        ++i;
    }

    s_order_list[s_number_of_orders][i] = '\0';
    s_item_price[s_number_of_orders] = price;

    s_subtotal += price;
    ++s_number_of_orders;

    return TRUE;
}

void set_tip(double tip)
{
    s_tip = tip;
}

void set_message(const char* message)
{
    int i;

    for (i = 0; i < MAX_MESSAGE_COUNT; ++i) {
        if (*message == '\0') {
            break;
        }

        s_message[i] = *message++;
    }

    s_message[i] = '\0';
    s_msg_len = i;
}

int print_receipt(const char* filename, time_t timestamp)
{
    FILE* stream;
    double total_amount;
    double tax;
    char white_space;
    int i;
    struct tm* date = gmtime(&timestamp);

    if (s_number_of_orders == 0) {
        s_subtotal = 0;
        s_number_of_orders = 0;
        s_tip = 0;
        s_message[0] = '\0';
        s_msg_len = 0;

        return FALSE;
    }

    stream = fopen(filename, "w");

    if (stream == NULL) {
    	return FALSE;
    }

    white_space = ' ';

    tax = s_subtotal * TAX_RATE;
    tax = (int)(tax * 100 + 0.5);
    tax /= 100;

    total_amount = s_subtotal + s_tip + tax;

    fprintf(stream, "%s\n", RESTAURANT_NAME);
    fprintf(stream, "%s\n", DELIMTER_LINE1);
    fprintf(stream, "%04d-%02d-%02d%c%02d:%02d:%02d%26c%05d\n", date->tm_year + 1900, date->tm_mon + 1, date->tm_mday, white_space, date->tm_hour, date->tm_min, date->tm_sec, white_space, s_today_order_count);
    fprintf(stream, "%s\n", DELIMTER_LINE1);

    for (i = 0; i < s_number_of_orders; ++i) {
        fprintf(stream, "%33s%17.2f\n", s_order_list[i], s_item_price[i]);
    }

    fprintf(stream, "\n");

    fprintf(stream, "%33s%17.2f\n", "Subtotal", s_subtotal);
    if (s_tip != 0) {
        fprintf(stream, "%33s%17.2f\n", "Tip", s_tip);
    }
    fprintf(stream, "%33s%17.2f\n", "Tax", tax);
    fprintf(stream, "%33s%17.2f\n", "Total", total_amount);
    
    fprintf(stream, "\n");

    if (s_message[0] != '\0') {
        const char* p_str_start = s_message;

        if (s_msg_len <= MAX_CHARACTER_COUNT_PER_LINE) {
            fprintf(stream, "%s\n", s_message);
        } else {
            fwrite(p_str_start, sizeof(char), MAX_CHARACTER_COUNT_PER_LINE, stream);
            fprintf(stream, "\n");

            p_str_start += MAX_CHARACTER_COUNT_PER_LINE;
            s_msg_len -= MAX_CHARACTER_COUNT_PER_LINE;

            fwrite(p_str_start, sizeof(char), s_msg_len, stream);
            fprintf(stream, "\n");
        }
    }

    fprintf(stream, "%s\n", DELIMTER_LINE2);
    fprintf(stream, "%50s", TAX_NUMBER);

    fclose(stream);

    ++s_today_order_count;
    s_subtotal = 0;
    s_number_of_orders = 0;
    s_tip = 0;
    s_message[0] = '\0';
    s_msg_len = 0;

    return TRUE;
}
