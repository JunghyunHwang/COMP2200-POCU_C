#include <stdio.h>
#include <string.h>
#include "receipter.h"

#define RESTAURANT_NAME ("Charles' Seafood")
#define RESTAURANT_NAME_LENGTH (16)
#define DELIMTER_LINE1 ("--------------------------------------------------")
#define DELIMTER_LINE2 ("==================================================")
#define MAX_ORDER_COUNT (10)
#define MAX_LINE_COUNT (50)
#define MAX_MESSAGE_COUNT (76)
#define TAX_RATE (0.05)
#define TAX_NUMBER ("Tax#-51234")

static double s_subtotal = 0;
static const char* s_order_list[MAX_ORDER_COUNT];
static double s_item_price[MAX_ORDER_COUNT];
static int s_today_order_count = 0;
static int s_number_of_orders = 0;
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
    int i;

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
    /*char out_str[MAX_LINE_COUNT + 1];*/
    double total_amount;
    double tax;
    char white_space = ' ';
    int i;
    struct tm* timer = gmtime(&timestamp);

    if (s_number_of_orders == 0) {
        s_subtotal = 0;
        s_number_of_orders = 0;
        s_tip = 0;
        s_message[0] = '\0';
        s_msg_len = 0;

        return FALSE;
    }

    tax = s_subtotal * TAX_RATE;
    tax = (int)(tax * 100 + 0.5);
    tax /= 100;

    total_amount = s_subtotal + s_tip + tax;

    stream = fopen(filename, "w");
    fprintf(stream, "%s\n", RESTAURANT_NAME);
    /*
    fwrite(RESTAURANT_NAME, sizeof(char), RESTAURANT_NAME_LENGTH, stream);
    fwrite("\n", sizeof(char), 1, stream);
	*/
    fprintf(stream, "%s\n", DELIMTER_LINE1);
    /*
    fwrite(DELIMTER_LINE1, sizeof(char), MAX_LINE_COUNT, stream);
    fwrite("\n", sizeof(char), 1, stream);
	*/
    fprintf(stream, "%04d-%02d-%02d%c%02d:%02d:%02d%26c%05d\n", timer->tm_year + 1900, timer->tm_mon + 1, timer->tm_mday, white_space, timer->tm_hour, timer->tm_min, timer->tm_sec, white_space, s_today_order_count);
    /*
    sprintf(out_str, "%04d-%02d-%02d%c%02d:%02d:%02d%26c%05d", timer->tm_year + 1900, timer->tm_mon + 1, timer->tm_mday, white_space, timer->tm_hour, timer->tm_min, timer->tm_sec, white_space, s_today_order_count);
    fwrite(out_str, sizeof(char), MAX_LINE_COUNT, stream);
    fwrite("\n", sizeof(char), 1, stream);
	*/
    fprintf(stream, "%s\n", DELIMTER_LINE1);
	/*
    fwrite(DELIMTER_LINE1, sizeof(char), MAX_LINE_COUNT, stream);
    fwrite("\n", sizeof(char), 1, stream);
	*/
    for (i = 0; i < s_number_of_orders; ++i) {
	    fprintf(stream, "%33s%17.2f\n", s_order_list[i], s_item_price[i]);
	    /*
        sprintf(out_str, "%33s%17.2f", s_order_list[i], s_item_price[i]);
        fwrite(out_str, sizeof(char), MAX_LINE_COUNT, stream);
        fwrite("\n", sizeof(char), 1, stream);
        */
    }

    fprintf(stream, "\n");
    /*
    fwrite("\n", sizeof(char), 1, stream);
	*/
    fprintf(stream, "%33s%17.2f\n", "Subtotal", s_subtotal);
	/*
    sprintf(out_str, "%33s%17.2f", "Subtotal", s_subtotal);
    fwrite(out_str, sizeof(char), MAX_LINE_COUNT, stream);
    fwrite("\n", sizeof(char), 1, stream);
	*/

    if (s_tip != 0) {
	    fprintf(stream, "%33s%17.2f\n", "Tip", s_tip);
    	/*
        sprintf(out_str, "%33s%17.2f", "Tip", s_tip);
        fwrite(out_str, sizeof(char), MAX_LINE_COUNT, stream);
        fwrite("\n", sizeof(char), 1, stream);
        */
    }

    fprintf(stream, "%33s%17.2f\n", "Tax", tax);
    /*
    sprintf(out_str, "%33s%17.2f", "Tax", tax);
    fwrite(out_str, sizeof(char), MAX_LINE_COUNT, stream);
    fwrite("\n", sizeof(char), 1, stream);
	*/
    fprintf(stream, "%33s%17.2f\n", "Total", total_amount);
    /*
    sprintf(out_str, "%33s%17.2f", "Total", total_amount);
    fwrite(out_str, sizeof(char), MAX_LINE_COUNT, stream);
    fwrite("\n\n", sizeof(char), 2, stream);
	*/
    fprintf(stream, "\n");
    if (s_message[0] != '\0') {
        const char* p_str_start = s_message;

        if (s_msg_len <= MAX_LINE_COUNT) {
        	fprintf(stream, "%50s\n", s_message);
	        /*fwrite(p_str_start, sizeof(char), MAX_LINE_COUNT, stream);*/
        } else {
            fwrite(p_str_start, sizeof(char), MAX_LINE_COUNT, stream);
            fwrite("\n", sizeof(char), 1, stream);

            p_str_start += MAX_LINE_COUNT;
            s_msg_len -= MAX_LINE_COUNT;

            fwrite(p_str_start, sizeof(char), s_msg_len, stream);
            fwrite("\n", sizeof(char), 1, stream);
        }
    }

    fprintf(stream, "%s\n", DELIMTER_LINE2);
    /*
    fwrite(DELIMTER_LINE2, sizeof(char), MAX_LINE_COUNT, stream);
    fwrite("\n", sizeof(char), 1, stream);
	*/
	fprintf(stream, "%50s", TAX_NUMBER);
	/*
    sprintf(out_str, "%50s", TAX_NUMBER);
    fwrite(out_str, sizeof(char), MAX_LINE_COUNT, stream);
	*/
    fclose(stream);

    ++s_today_order_count;
    s_subtotal = 0;
    s_number_of_orders = 0;
    s_tip = 0;
    s_message[0] = '\0';
    s_msg_len = 0;

    return TRUE;
}
