#include <stdio.h>
#include "cyber_spaceship.h"
#include <assert.h>

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
        int is_safe = multiverse_cab[i] % 2;

        switch (is_safe) {
            case 0: /* safe */
                if (i == 0 || multiverse_cab[i - 1] % 2 != 0) {
                    safe_zone_index[j] = i;
                }

                safe_zone_length[j] += 1;
            break;
            case 1: /* danger */
                if (i != 0 && multiverse_cab[i - 1] % 2 == 0) {
                    j++;
                }
            break;
            default:
                assert(FALSE);
            break;
        }
    }

    print_cab(multiverse_cab);

    /* safe zone length */
    printf("safe_zone_length: ");
    for(i = 0; i < 30; i++) {
        printf("%d, ", safe_zone_length[i]);
    }
    printf("\n");

    /* safe zone index */

    printf("safe_zone_index: ");
    for(i = 0; i < 30; i++) {
        printf("%d, ", safe_zone_index[i]);
    }
    printf("\n");

    /* Check longest safe area */
    longest_length = safe_zone_length[0];
    index = safe_zone_index[0];

    printf("longest_length: %d\n", longest_length);
    printf("j: %d\n", j);
    
    for (i = 1; i <= j; i++) {
        if (safe_zone_length[i] >= longest_length) {
            longest_length = safe_zone_length[i];
            index = safe_zone_index[i];
        }
    }

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
