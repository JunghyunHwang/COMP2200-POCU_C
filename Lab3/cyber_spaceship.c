#include <stdio.h>
#include "cyber_spaceship.h"

const char* get_longest_safe_zone_or_null(
    const char* const cab_start_location, 
    const size_t cab_length, 
    const char* const cluster_start_locations[], 
    const size_t cluster_lengths[], 
    const size_t cluster_count, 
    size_t* out_longest_safe_area_length)
{
    char multiverse_cab[cab_length] = { 0, };
    int safe_zone_index[cab_length];
    int safe_zone_length[cab_length];
    int longest_length;
    int safe_area_start_index;
    size_t i;
    size_t j;

    int universe_distance = cab_start_location - multiverse_cab;
    size_t safe_zone_count = 0;

    if (cab_length == 0) {
        return NULL;
    }
    
    /* Copy CAB */
    for (i = 0; i < cluster_count; i++) {
        char* multiverse_cluster_start_location = cluster_start_locations[i] - universe_distance;

        for (j = 0; j < cluster_lengths[i]; j++) {
            char* cluster_address = multiverse_cluster_start_location + j;
            &temp_address += 1;
        }
    }

    /* Check safe area */
    j = 0;

    for (i = 0; i < cab_length; i++) {
        if (multiverse_cab[i] == 0 || multiverse_cab[i] % 2 == 0) {
            if (i == 0 || multiverse_cab[i - 1] % 2 != 0) {
                safe_zone_index[j] = i;
            }

            zone_count++;
        } else {
            if (i != 0 && multiverse_cab[i - 1] % 2 == 0) {
                safe_zone_count[j] = zone_count;
                j++;
            }

            zone_count = 0;
        }
    }

    /* Check longest safe area */
    longest_length = safe_zone_count[0]
    index = safe_zone_index[0];

    for (i = 1; i < j; i++) {
        if (safe_zone_count[i] >= longest_length) {
            index = safe_zone_index[i];
        }
    }

    out_longest_safe_area_length = multiverse_cab + universe_distance + index;

    return out_longest_safe_area_length;
}