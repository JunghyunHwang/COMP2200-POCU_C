#include <stdio.h>
#include <assert.h>
#include "cyber_spaceship.h"

const char* get_longest_safe_zone_or_null(const char* const cab_start_location, const size_t cab_length, const char* const cluster_start_locations[], const size_t cluster_lengths[], const size_t cluster_count, size_t* out_longest_safe_area_length)
{
    size_t over_lap_cluster_count;
    size_t i;
    size_t j;

    int safe_area_length = 0;
    int safe_area_index = -1;
    size_t longest_safe_area_index = 0;
    
    for (i = 0; i < cab_length; i++) {
        /* char* current_location = cab_start_location + i; */
        int is_safe;
        over_lap_cluster_count = 0;

        for (j = 0; j < cluster_count; j++) {
            /* char* cluster_start_address = cluster_start_locations[j];
            char* cluster_end_address = cluster_start_locations[j] + cluster_lengths[j]; */

            if (cab_start_location + i >= cluster_start_locations[j] && 
                cab_start_location + i <= cluster_start_locations[j] + cluster_lengths[j])
            {
                over_lap_cluster_count++;
            }
        }

        is_safe = over_lap_cluster_count % 2;

        switch(is_safe) {
            case 0:
                if (safe_area_index == -1) {
                    safe_area_index = i;
                }

                safe_area_length++;
            break;
            case 1:
                if (*out_longest_safe_area_length <= safe_area_length) {
                    *out_longest_safe_area_length = safe_area_length;
                    longest_safe_area_index = safe_area_index;
                }

                safe_area_length = 0;
                safe_area_index = -1;
            break;
            default:
                assert(FALSE);
            break;
        }
    }

    return &cab_start_location[longest_safe_area_index];
}
