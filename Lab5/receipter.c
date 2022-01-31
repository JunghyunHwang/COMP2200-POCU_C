#include <stdio.h>
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
static const char* s_message = "";

int add_item(const char* name, double price)
{
	if (s_number_of_orders >= MAX_ORDER_COUNT) {
		printf("*****Order list full!!!*****\n");
		return FALSE;
	} else if (*name == '\0') {
		printf("*****No name!!!*****\n");
		return FALSE;
	}

	s_order_list[s_number_of_orders] = name;
	s_item_price[s_number_of_orders] = price;

	printf("s_order_list : %s\n", s_order_list[s_number_of_orders]);
	printf("s_item_price price: %.2f\n", s_item_price[s_number_of_orders]);

	s_subtotal += price;
	++s_number_of_orders;
	printf("Remain Orders: %d\n", MAX_ORDER_COUNT - s_number_of_orders);
	printf("=========================\n");

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
	char out_str[MAX_LINE_COUNT];
	double total_amount;
	double tax;
    struct tm timer;
	size_t i;

	if (s_number_of_orders == 0) {
		return FALSE;
	}

    out_str[51] = '\0';

	tax = s_subtotal * TAX_RATE;
	tax = (int)(tax * 100 + 0.5);
	tax /= 100;

	total_amount = s_subtotal + s_tip + tax;
    timer = *gmtime(&timestamp);

    sprintf(out_str, "%s\n", RESTAURANT_NAME);
    printf("%s", out_str);

    sprintf(out_str, "%s\n", DELIMTER_LINE);
    printf("%s", out_str);

    sprintf(out_str, "%d-%d-%d% d:%d:%-28d%05d\n", timer.tm_year + 1900, timer.tm_mon + 1, timer.tm_mday, timer.tm_hour, timer.tm_min, timer.tm_sec, s_today_order_count);
    printf("%s", out_str);

    sprintf(out_str, "%s\n", DELIMTER_LINE);
    printf("%s", out_str);

    for (i = 0; i < s_number_of_orders; ++i) {
	    sprintf(out_str, "%33s%17.2f\n", s_order_list[i], s_item_price[i]);
	    printf("%s", out_str);
    }

    sprintf(out_str, "%33s%17.2f\n", "Subtotal", s_subtotal);
    printf("%s", out_str);

    if (s_tip != 0) {
		sprintf(out_str, "%33s%17.2f\n", "Tip", s_tip);
	    printf("%s", out_str);
    }

	sprintf(out_str, "%33s%17.2f\n", "Tax", tax);
    printf("%s", out_str);

    sprintf(out_str, "%33s%17.2f\n", "Total", total_amount);
    printf("%s", out_str);

    sprintf(out_str, "\n");
    printf("%s", out_str);

    if (s_message != '\0') {
    	sprintf(out_str, "%s\n", s_message);
	    printf("%s", out_str);
    }

    sprintf(out_str, "%s\n", "==================================================");
    printf("%s", out_str);

    sprintf(out_str, "%50s\n", TAX_NUMBER);
    printf("%s", out_str);

    ++s_today_order_count;
    s_number_of_orders = 0;
	s_tip = 0;
	s_message = "";

    return TRUE;
}

