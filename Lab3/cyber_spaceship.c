#include <stdio.h>
#include "cyber_spaceship.h"

const char* get_longest_safe_zone_or_null(const char* const cab_start_location, const size_t cab_length, const char* const cluster_start_locations[], const size_t cluster_lengths[], const size_t cluster_count, size_t* out_longest_safe_area_length)
{
    char multiverse_cab[30] = { 0, };
    int safe_zone_index[30] = { 0, };
    int safe_zone_length[30] = { 0, };
    int longest_length;
    char* result_address;
    size_t i;
    size_t j;

    int universe_distance = cab_start_location - multiverse_cab;
    size_t safe_zone_count = 0;
    int index = 0;

    if (cab_length == 0) {
        return NULL;
    }
    
    /* Copy CAB */
    for (i = 0; i < cluster_count; i++) {
        char* multiverse_cluster_start_location = (char*)cluster_start_locations[i] - universe_distance;

        for (j = 0; j < cluster_lengths[i]; j++) {
            char* cluster_address = multiverse_cluster_start_location + j;
            *cluster_address += 1;
        }
    }

    /* Check safe area */
    j = 0;

    for (i = 0; i < cab_length; i++) {
        if (multiverse_cab[i] == 0 || multiverse_cab[i] % 2 == 0) {
            if (i == 0 || multiverse_cab[i - 1] % 2 != 0) {
                safe_zone_index[j] = i;
            }

            safe_zone_count++;
        } else {
            if (i != 0 && multiverse_cab[i - 1] % 2 == 0) {
                safe_zone_length[j] = safe_zone_count;
                j++;
            }

            safe_zone_count = 0;
        }
    }

    print_cab(multiverse_cab);

    /* Check longest safe area */
    longest_length = safe_zone_length[0];
    index = safe_zone_index[0];
    
    printf("safe_zone_length: ");
    for(i = 0; i < 30; i++) {
        printf("%d, ", safe_zone_length[i]);
    }
    printf("\n");
    
    for (i = 1; i < j; i++) {
        if (safe_zone_length[i] >= longest_length) {
            longest_length = safe_zone_length[i];
            index = safe_zone_index[i];
        }
    }

    printf("longest_length: %d\n", longest_length);

    *out_longest_safe_area_length = longest_length;
    result_address = multiverse_cab + universe_distance + index;

    return result_address;
}

void print_cab(char cab[])
{
    size_t i;
    printf("multicab: ");
    for (i = 0; i < 30; i++) {
        printf("%d", cab[i]);
    }
    printf("\n");
}
