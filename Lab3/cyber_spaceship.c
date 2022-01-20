#include <stdio.h>
#include <assert.h>
#include "cyber_spaceship.h"

const char* get_longest_safe_zone_or_null(const char* const cab_start_location, const size_t cab_length, const char* const cluster_start_locations[], const size_t cluster_lengths[], const size_t cluster_count, size_t* out_longest_safe_area_length)
{
    size_t i;
    size_t j;

    size_t safe_area_length = 0;
    size_t longest_safe_area_index = 0;
    int first_safe_area_index = 0;
    *out_longest_safe_area_length = 0;

    if (cab_length == 0) {
        return NULL;
    } else if (cluster_count == 0) {
        *out_longest_safe_area_length = cab_length;
        return cab_start_location;
    }
    
    for (i = 0; i < cab_length; i++) {
        size_t overlap_cluster_count = 0;
        int is_safe;

        for (j = 0; j < cluster_count; j++) {
            if (cab_start_location + i >= cluster_start_locations[j] && cab_start_location + i <= cluster_start_locations[j] + cluster_lengths[j] - 1) {
                overlap_cluster_count++;
            }
        }

        is_safe = overlap_cluster_count % 2;

        switch (is_safe) {
        case 0:
            if (first_safe_area_index == -1) {
                first_safe_area_index = i;
            }

            safe_area_length++;
            break;
        case 1:
            safe_area_length = 0;
            first_safe_area_index = -1;
            break;
        default:
            assert(0);
            break;
        }

        if (*out_longest_safe_area_length <= safe_area_length) {
            *out_longest_safe_area_length = safe_area_length;
            longest_safe_area_index = first_safe_area_index;
        }
    }

    if (*out_longest_safe_area_length == 0) {
        return NULL;
    }

    return &cab_start_location[longest_safe_area_index];
}

int get_travel_time(const char* const cab_start_location, const size_t cab_length, const char* const cluster_start_locations[], const size_t cluster_lengths[], const size_t cluster_count)
{
    double total_travel_time = 0;
    size_t safe_area_count = 0;
    size_t danger_area_count = 0;
    size_t i;
    size_t j;

    if (cluster_count == 0) {
        total_travel_time = 0.1 * cab_length + 0.5;
        return (int)total_travel_time;
    }

    for (i = 0; i < cab_length; i++) {
        size_t overlap_cluster_count = 0;

        for (j = 0; j < cluster_count; j++) {
            if (cab_start_location + i >= cluster_start_locations[j] && cab_start_location + i <= cluster_start_locations[j] + cluster_lengths[j] - 1) {
                overlap_cluster_count++;
            }
        }
        
        if (overlap_cluster_count % 2 == 0) {
            ++safe_area_count;
        } else {
            ++danger_area_count;
        }
    }

    total_travel_time = safe_area_count / 10.0 + danger_area_count / 5.0;
    total_travel_time += 0.5;

    return (int)total_travel_time;
}
