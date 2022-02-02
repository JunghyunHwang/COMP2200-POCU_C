#include <stdio.h>
#include "receipter.h"

#define RESTAURANT_NAME ("Charles' Seafood")
#define DELIMTER_LINE ("--------------------------------------------------")
#define MAX_ORDER_COUNT (10)
#define MAX_LINE_COUNT (52)
#define MAX_MESSAGE_COUNT (76)
#define TAX_RATE (0.05)
#define TAX_NUMBER ("Tax#-51234")

static double s_subtotal = 0;
static const char* s_order_list[MAX_ORDER_COUNT];
static double s_item_price[MAX_ORDER_COUNT];
static size_t s_today_order_count = 0;
static size_t s_number_of_orders = 0;
static double s_tip = 0;
static char s_message[MAX_MESSAGE_COUNT];
static int s_msg_len;

int add_item(const char* name, double price)
{
    if (s_number_of_orders >= MAX_ORDER_COUNT) {
        return FALSE;
    }

    s_order_list[s_number_of_orders] = name;
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
    size_t i;

    for (i = 0; i < MAX_MESSAGE_COUNT - 1; ++i) {
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
    char out_str[MAX_LINE_COUNT];
    double total_amount;
    double tax;
    char white_space = ' ';
    struct tm timer;
    size_t i;

    if (s_number_of_orders == 0) {
        s_subtotal = 0;
        s_number_of_orders = 0;
        s_tip = 0;
        s_message[0] = '\0';
        s_msg_len = 0;

        return FALSE;
    }

    out_str[51] = '\0';

    tax = s_subtotal * TAX_RATE;
    tax = (int)(tax * 100 + 0.5);
    tax /= 100;

    total_amount = s_subtotal + s_tip + tax;
    timer = *gmtime(&timestamp);

    stream = fopen(filename, "w");

    fwrite(RESTAURANT_NAME, sizeof(RESTAURANT_NAME), 1, stream);
    fwrite("\n", sizeof(char), 1, stream);

    fwrite(DELIMTER_LINE, sizeof(DELIMTER_LINE), 1, stream);
    fwrite("\n", sizeof(char), 1, stream);

    sprintf(out_str, "%04d-%02d-%02d%c%02d:%02d:%02d%26c%05lu", timer.tm_year + 1900, timer.tm_mon + 1, timer.tm_mday, white_space, timer.tm_hour, timer.tm_min, timer.tm_sec, white_space, s_today_order_count);
    fwrite(out_str, sizeof(out_str), 1, stream);
    fwrite("\n", sizeof(char), 1, stream);

    fwrite(DELIMTER_LINE, sizeof(DELIMTER_LINE), 1, stream);
    fwrite("\n", sizeof(char), 1, stream);

    for (i = 0; i < s_number_of_orders; ++i) {
        sprintf(out_str, "%33s%17.2f", s_order_list[i], s_item_price[i]);
        fwrite(out_str, sizeof(out_str), 1, stream);
        fwrite("\n", sizeof(char), 1, stream);
    }

    fwrite("\n", sizeof(char), 1, stream);

    sprintf(out_str, "%33s%17.2f", "Subtotal", s_subtotal);
    fwrite(out_str, sizeof(out_str), 1, stream);
    fwrite("\n", sizeof(char), 1, stream);


    if (s_tip != 0) {
        sprintf(out_str, "%33s%17.2f", "Tip", s_tip);
        fwrite(out_str, sizeof(out_str), 1, stream);
        fwrite("\n", sizeof(char), 1, stream);
    }

    sprintf(out_str, "%33s%17.2f", "Tax", tax);
    fwrite(out_str, sizeof(out_str), 1, stream);
    fwrite("\n", sizeof(char), 1, stream);

    sprintf(out_str, "%33s%17.2f", "Total", total_amount);
    fwrite(out_str, sizeof(out_str), 1, stream);
    fwrite("\n\n", sizeof(char), 2, stream);

    if (s_message[0] != '\0') {
        const char* p_str_start = s_message;

        if (s_msg_len <= MAX_LINE_COUNT - 2) {
            sprintf(out_str, "%s\n", p_str_start);
            fputs(out_str, stream);
        } else {
            fwrite(p_str_start, sizeof(char), MAX_LINE_COUNT - 2, stream);
            fwrite("\n", sizeof(char), 1, stream);

            p_str_start += 50;
            s_msg_len -= 50;

            fwrite(p_str_start, sizeof(char), s_msg_len, stream);
            fwrite("\n", sizeof(char), 1, stream);
        }
    }

    sprintf(out_str, "%s", "==================================================");
    fwrite(out_str, sizeof(out_str), 1, stream);
    fwrite("\n", sizeof(char), 1, stream);

    sprintf(out_str, "%50s", TAX_NUMBER);
    fwrite(out_str, sizeof(out_str), 1, stream);
    fwrite("\n", sizeof(char), 1, stream);

    fclose(stream);

    ++s_today_order_count;
    s_subtotal = 0;
    s_number_of_orders = 0;
    s_tip = 0;
    s_message[0] = '\0';
    s_msg_len = 0;

    return TRUE;
}
