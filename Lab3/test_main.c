#include <stdio.h>
#include <assert.h>
#include "cyber_spaceship.h"

int main(void)
{
    const char cyber_asteroid_belt[30];
    const char* cluster_start_addresses[6];
    size_t cluster_lengths[6];
    size_t out_longest_safe_area_length = 0;
    size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
    const char* longest_safe_cluster_start_address;
    int time_in_mins;

    const char* cluster1 = &cyber_asteroid_belt[0];
    const char* cluster2 = &cyber_asteroid_belt[0];
    const char* cluster3 = &cyber_asteroid_belt[1];
    const char* cluster4 = &cyber_asteroid_belt[2];
    const char* cluster5 = &cyber_asteroid_belt[3];
    const char* cluster6 = &cyber_asteroid_belt[4];

    cluster_start_addresses[0] = cluster1;
    cluster_start_addresses[1] = cluster2;
    cluster_start_addresses[2] = cluster3;
    cluster_start_addresses[3] = cluster4;
    cluster_start_addresses[4] = cluster5;
    cluster_start_addresses[5] = cluster6;

    cluster_lengths[0] = 1U;
    cluster_lengths[1] = 2U;
    cluster_lengths[2] = 2U;
    cluster_lengths[3] = 2U;
    cluster_lengths[4] = 2U;
    cluster_lengths[5] = 23U;

    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 6, out_longest_safe_area_length_p); /* longest_safe_cluster_start_address: (cyber_asteroid_belt + 12), out_longest_safe_area_length: 15 */

    printf("cyber_asteroid_belt address: %p\n", (void*)cyber_asteroid_belt);
    printf("=======================\n");
    printf("expected address: %p\n", (void*)&cyber_asteroid_belt[0]);
    printf("result address: %p\n", (void*)longest_safe_cluster_start_address);
    printf("expected Longest length value: %d\n", 5);
    printf("result Longest length value: %d\n", out_longest_safe_area_length);

    /* No safe area */
    *out_longest_safe_area_length_p = 0;
    cluster1 = &cyber_asteroid_belt[0];
    cluster_start_addresses[0] = cluster1;
    cluster_lengths[0] = 30U;

    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 1, out_longest_safe_area_length_p); /* longest_safe_cluster_start_address: (cyber_asteroid_belt + 12), out_longest_safe_area_length: 15 */
    assert(longest_safe_cluster_start_address == NULL);
    assert(*out_longest_safe_area_length_p == 0);

    /* Two Same clusters */
    *out_longest_safe_area_length_p = 0;
    cluster1 = &cyber_asteroid_belt[0];
    cluster2 = &cyber_asteroid_belt[0];

    cluster_start_addresses[0] = cluster1;
    cluster_start_addresses[1] = cluster2;

    cluster_lengths[0] = 30U;
    cluster_lengths[1] = 30U;

    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 2, out_longest_safe_area_length_p); /* longest_safe_cluster_start_address: (cyber_asteroid_belt + 12), out_longest_safe_area_length: 15 */
    assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[0]);
    assert(*out_longest_safe_area_length_p == 30);
    
    /* No overlap clusters */
    *out_longest_safe_area_length_p = 0;
    cluster1 = &cyber_asteroid_belt[0];
    cluster2 = &cyber_asteroid_belt[15];

    cluster_start_addresses[0] = cluster1;
    cluster_start_addresses[1] = cluster2;

    cluster_lengths[0] = 15U;
    cluster_lengths[1] = 15U;

    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 2, out_longest_safe_area_length_p); /* longest_safe_cluster_start_address: (cyber_asteroid_belt + 12), out_longest_safe_area_length: 15 */
    assert(longest_safe_cluster_start_address == NULL);
    assert(*out_longest_safe_area_length_p == 0);

    /* No cluster */
    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 0, out_longest_safe_area_length_p); /* longest_safe_cluster_start_address: (cyber_asteroid_belt + 12), out_longest_safe_area_length: 15 */
    assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[0]);
    assert(*out_longest_safe_area_length_p == 30);

    /* Get travel time */
    cluster1 = &cyber_asteroid_belt[12];
    cluster2 = &cyber_asteroid_belt[3];

    cluster_start_addresses[0] = cluster1;
    cluster_start_addresses[1] = cluster2;

    cluster_lengths[0] = 15U;
    cluster_lengths[1] = 25U;

    time_in_mins = get_travel_time(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 2); /* 4 */
    assert(time_in_mins == 4);

    printf("No prob");

    return 0;
}
