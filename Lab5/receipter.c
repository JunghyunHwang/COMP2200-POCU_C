#include <stdio.h>
#include <string.h>
#include "receipter.h"

#define RESTAURANT_NAME ("Charles' Seafood")
#define DELIMTER_LINE ("--------------------------------------------------")
#define MAX_ORDER_COUNT (10)
#define MAX_LINE_COUNT (52)
#define TAX_RATE (0.05)
#define TAX_NUMBER ("Tax#-51234")

static double s_subtotal = 0;
static const char* s_order_list[MAX_ORDER_COUNT];
static double s_item_price[MAX_ORDER_COUNT];
static size_t s_today_order_count = 0;
static size_t s_number_of_orders = 0;
static double s_tip = 0;
static const char* s_message = NULL;

int add_item(const char* name, double price)
{
    if (s_number_of_orders >= MAX_ORDER_COUNT) {
        return FALSE;
    } else if (*name == '\0') {
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
    s_message = message;
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
        s_message = NULL;

        return FALSE;
    }

    out_str[51] = '\0';

    tax = s_subtotal * TAX_RATE;
    tax = (int)(tax * 100 + 0.5);
    tax /= 100;

    total_amount = s_subtotal + s_tip + tax;
    timer = *gmtime(&timestamp);

    stream = fopen(filename, "w");

    sprintf(out_str, "%s\n", RESTAURANT_NAME);
    fputs(out_str, stream);

    sprintf(out_str, "%s\n", DELIMTER_LINE);
    fputs(out_str, stream);

    sprintf(out_str, "%02d-%02d-%02d%c%02d:%02d:%02d%26c%05d\n", timer.tm_year + 1900, timer.tm_mon + 1, timer.tm_mday, white_space, timer.tm_hour, timer.tm_min, timer.tm_sec, white_space, s_today_order_count);
    fputs(out_str, stream);

    sprintf(out_str, "%s\n", DELIMTER_LINE);
    fputs(out_str, stream);

    for (i = 0; i < s_number_of_orders; ++i) {
        sprintf(out_str, "%33s%17.2f\n", s_order_list[i], s_item_price[i]);
        fputs(out_str, stream);
    }

    fputc('\n', stream);

    sprintf(out_str, "%33s%17.2f\n", "Subtotal", s_subtotal);
    fputs(out_str, stream);

    if (s_tip != 0) {
        sprintf(out_str, "%33s%17.2f\n", "Tip", s_tip);
        fputs(out_str, stream);
    }

    sprintf(out_str, "%33s%17.2f\n", "Tax", tax);
    fputs(out_str, stream);

    sprintf(out_str, "%33s%17.2f\n", "Total", total_amount);
    fputs(out_str, stream);

    sprintf(out_str, "\n");
    fputs(out_str, stream);

    if (s_message != NULL) {
        int msg_len = strlen(s_message);
        const char* p_str_start = s_message;

        if (msg_len <= MAX_LINE_COUNT - 2) {
            sprintf(out_str, "%s\n", p_str_start);
            fputs(out_str, stream);
        } else {
            fwrite(p_str_start, sizeof(char), MAX_LINE_COUNT - 2, stream);
            fputc('\n', stream);
	    	
            p_str_start += 50;
            msg_len = strlen(p_str_start) > 25 ? 25 : strlen(p_str_start);

            fwrite(p_str_start, sizeof(char), msg_len, stream);
            fputc('\n', stream);
        }
    }

    sprintf(out_str, "%s\n", "==================================================");
    fputs(out_str, stream);

    sprintf(out_str, "%50s\n", TAX_NUMBER);
    fputs(out_str, stream);

    fclose(stream);

    ++s_today_order_count;
    s_subtotal = 0;
    s_number_of_orders = 0;
    s_tip = 0;
    s_message = NULL;
	
    return TRUE;
}
