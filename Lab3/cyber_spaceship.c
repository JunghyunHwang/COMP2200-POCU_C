#include <stdio.h>
#include "cyber_spaceship.h"

const char* get_longest_safe_zone_or_null(const char* const cab_start_location, const size_t cab_length, const char* const cluster_start_locations[], const size_t cluster_lengths[], const size_t cluster_count, size_t* out_longest_safe_area_length)
{
    int space[cluster_count][cab_length] = { 0, };
    size_t i;
    size_t j;
    
    for (i = 0; i < cluster_count; i++) {
        for (j = 0; j < cab_length; j++) {
            if ()
        }
    }
}