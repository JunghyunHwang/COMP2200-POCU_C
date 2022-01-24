#include <stdio.h>
#include <assert.h>
#include "cyber_spaceship.h"

void test_cab_length_upto_100(void)
{
    /* 0 cluster */
    {
        const char cyber_asteroid_belt[100];
        int time_in_mins;
        size_t out_longest_safe_area_length = 0;
        size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
        const char* longest_safe_cluster_start_address;
        size_t i;
        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 0, NULL, NULL, 0, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == NULL);
        assert(*out_longest_safe_area_length_p == 0);
        time_in_mins = get_travel_time(cyber_asteroid_belt, 0, NULL, NULL, 0);
        assert(time_in_mins == 0);
        for (i = 1; i <= 100; i++) {
            longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, i, NULL, NULL, 0, out_longest_safe_area_length_p);
            assert(longest_safe_cluster_start_address == cyber_asteroid_belt);
            assert(*out_longest_safe_area_length_p == i);
            time_in_mins = get_travel_time(cyber_asteroid_belt, i, NULL, NULL, 0);
            assert(time_in_mins == (i + 5) / 10); /* check if your double value is like x.4999... < x.5 */
        }
    }
    /* 2 clusters */
    {
        const char cyber_asteroid_belt[100];
        int time_in_mins;
        const char* cluster_start_addresses[2];
        size_t cluster_lengths[2];
        size_t out_longest_safe_area_length = 0;
        size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
        const char* longest_safe_cluster_start_address;
        size_t i;
        cluster_start_addresses[0] = &cyber_asteroid_belt[0];
        cluster_start_addresses[1] = &cyber_asteroid_belt[0];
        for (i = 1; i <= 100; i++) {
            cluster_lengths[0] = i;
            cluster_lengths[1] = i;
            longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, i, cluster_start_addresses, cluster_lengths, 2, out_longest_safe_area_length_p);
            assert(longest_safe_cluster_start_address == cyber_asteroid_belt);
            assert(*out_longest_safe_area_length_p == i);
            time_in_mins = get_travel_time(cyber_asteroid_belt, i, cluster_start_addresses, cluster_lengths, 2);
            assert(time_in_mins == (i + 5) / 10); 
        }
    }
    /* 1 cluster */
    {
        const char cyber_asteroid_belt[100];
        int time_in_mins;
        const char* cluster_start_addresses[1];
        size_t cluster_lengths[1];
        size_t out_longest_safe_area_length = 0;
        size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
        const char* longest_safe_cluster_start_address;
        
        size_t i;
        cluster_start_addresses[0] = &cyber_asteroid_belt[0];
        for (i = 1; i <= 100; i++) {
            cluster_lengths[0] = i;
            longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, i, cluster_start_addresses, cluster_lengths, 1, out_longest_safe_area_length_p);
            
            assert(*out_longest_safe_area_length_p == 0);
            time_in_mins = get_travel_time(cyber_asteroid_belt, i, cluster_start_addresses, cluster_lengths, 1);
            assert(time_in_mins == (i * 2 + 5) / 10); /* check if your double value is like x.9999... < x+1 */
        }
    }
    printf("test_cab_length_upto_100 clear\n\n");
}

void test_etc(void)
{
    /* multiple clusters & safe + dangerous area */
    {
        const char cyber_asteroid_belt[100];
        const char* cluster_start_addresses[8];
        size_t cluster_lengths[8];
        size_t out_longest_safe_area_length = 0;
        size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
        const char* longest_safe_cluster_start_address;
        int time_in_mins;
        cluster_start_addresses[0] = &cyber_asteroid_belt[0];
        cluster_start_addresses[1] = &cyber_asteroid_belt[1];
        cluster_start_addresses[2] = &cyber_asteroid_belt[2];
        cluster_start_addresses[3] = &cyber_asteroid_belt[3];
        cluster_start_addresses[4] = &cyber_asteroid_belt[4];
        cluster_start_addresses[5] = &cyber_asteroid_belt[5];
        cluster_start_addresses[6] = &cyber_asteroid_belt[68];
        cluster_start_addresses[7] = &cyber_asteroid_belt[69];
        cluster_lengths[0] = 50U;
        cluster_lengths[1] = 50U;
        cluster_lengths[2] = 50U;
        cluster_lengths[3] = 50U;
        cluster_lengths[4] = 50U;
        cluster_lengths[5] = 50U;
        cluster_lengths[6] = 30U;
        cluster_lengths[7] = 30U;
        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 100, cluster_start_addresses, cluster_lengths, 8, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == cyber_asteroid_belt + 5);
        assert(*out_longest_safe_area_length_p == 45);
        time_in_mins = get_travel_time(cyber_asteroid_belt, 100, cluster_start_addresses, cluster_lengths, 8);
        assert(time_in_mins == 11);
    }
    /* two same length safe areas -> following area should be result */
    {
        const char cyber_asteroid_belt[100];
        const char* cluster_start_addresses[2];
        size_t cluster_lengths[2];
        size_t out_longest_safe_area_length = 0;
        size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
        const char* longest_safe_cluster_start_address;
        int time_in_mins;
 
        cluster_start_addresses[0] = &cyber_asteroid_belt[0];
        cluster_start_addresses[1] = &cyber_asteroid_belt[50];
 
        cluster_lengths[0] = 25U;
        cluster_lengths[1] = 25U;
 
        longest_safe_cluster_start_address =  get_longest_safe_zone_or_null(cyber_asteroid_belt, 100, cluster_start_addresses, cluster_lengths, 2, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == cyber_asteroid_belt + 75);
        assert(*out_longest_safe_area_length_p == 25);
        time_in_mins = get_travel_time(cyber_asteroid_belt, 100, cluster_start_addresses, cluster_lengths, 2);
        assert(time_in_mins == 15);
    }
    /* start with 1 cluster but end with 2 clusters */
    {
        const char cyber_asteroid_belt[100];
        const char* cluster_start_addresses[3];
        size_t cluster_lengths[3];
        size_t out_longest_safe_area_length = 0;
        size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
        const char* longest_safe_cluster_start_address;
        int time_in_mins;
 
        cluster_start_addresses[0] = &cyber_asteroid_belt[0];
        cluster_start_addresses[1] = &cyber_asteroid_belt[50];
        cluster_start_addresses[2] = &cyber_asteroid_belt[50];
 
        cluster_lengths[0] = 50U;
        cluster_lengths[1] = 50U;
        cluster_lengths[2] = 50U;
 
        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 100, cluster_start_addresses, cluster_lengths, 3, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == cyber_asteroid_belt + 50);
        assert(*out_longest_safe_area_length_p == 50);
        time_in_mins = get_travel_time(cyber_asteroid_belt, 100, cluster_start_addresses, cluster_lengths, 3);
        assert(time_in_mins == 15);
    }
    /* start with 2 clusters but end with 1 cluster */
    {
        const char cyber_asteroid_belt[100];
        const char* cluster_start_addresses[3];
        size_t cluster_lengths[3];
        size_t out_longest_safe_area_length = 0;
        size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
        const char* longest_safe_cluster_start_address;
        int time_in_mins;
 
        cluster_start_addresses[0] = &cyber_asteroid_belt[0];
        cluster_start_addresses[1] = &cyber_asteroid_belt[0];
        cluster_start_addresses[2] = &cyber_asteroid_belt[50];
 
        cluster_lengths[0] = 50U;
        cluster_lengths[1] = 50U;
        cluster_lengths[2] = 50U;
 
        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 100, cluster_start_addresses, cluster_lengths, 3, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == cyber_asteroid_belt);
        assert(*out_longest_safe_area_length_p == 50);
        time_in_mins = get_travel_time(cyber_asteroid_belt, 100, cluster_start_addresses, cluster_lengths, 3);
        assert(time_in_mins == 15);
    }
    printf("test_etc clear\n\n");
}


void my_test_case(void)
{
    /* 1 cluster */
    {
        const char cyber_asteroid_belt[30];
        const char* cluster_start_addresses[1];
        size_t cluster_lengths[1];
        size_t out_longest_safe_area_length = 0;
        size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
        const char* longest_safe_cluster_start_address;
        size_t i;
        
        cluster_start_addresses[0] = &cyber_asteroid_belt[0];
        cluster_lengths[0] = 15U;

        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 1, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[15]);
        assert(out_longest_safe_area_length == 15);

        /* No safe area */
        out_longest_safe_area_length = 0;
        cluster_start_addresses[0] = &cyber_asteroid_belt[0];
        cluster_lengths[0] = 30U;

        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 1, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == NULL);
        assert(out_longest_safe_area_length == 0);

        /* cluster start address cab out of range */
        out_longest_safe_area_length = 0;
        cluster_start_addresses[0] = &cyber_asteroid_belt[0] - 1;
        cluster_lengths[0] = 16U;

        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 1, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[15]);
        assert(out_longest_safe_area_length == 15);

        out_longest_safe_area_length = 0;
        cluster_start_addresses[0] = &cyber_asteroid_belt[0] - 15;
        cluster_lengths[0] = 5U;

        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 1, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[0]);
        assert(out_longest_safe_area_length == 30);

        out_longest_safe_area_length = 0;
        cluster_start_addresses[0] = &cyber_asteroid_belt[29] + 1;
        cluster_lengths[0] = 5U;

        longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 1, out_longest_safe_area_length_p);
        assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[0]);
        assert(out_longest_safe_area_length == 30);

        printf("==========cluster length 1 test ============ \n");
        for (i = 0; i < 30; i++) {
            cluster_start_addresses[0] = &cyber_asteroid_belt[i];
            cluster_lengths[0] = 1U;

            longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 30, cluster_start_addresses, cluster_lengths, 1, out_longest_safe_area_length_p);

            if (i > 14) {
                assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[0]);
            } else {
                assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[i + cluster_lengths[0]]);
            }
        }
    }
}

void B02_2ClustersNoOverlap4(void)
{
    const char cyber_asteroid_belt[31];
    const char* cluster_start_addresses[2];
    size_t cluster_lengths[2];
    size_t out_longest_safe_area_length = 0;
    size_t* out_longest_safe_area_length_p = &out_longest_safe_area_length;
    const char* longest_safe_cluster_start_address;

    /*1*/
    cluster_start_addresses[0] = &cyber_asteroid_belt[0];
    cluster_start_addresses[1] = &cyber_asteroid_belt[16];

    cluster_lengths[0] = 7U;
    cluster_lengths[1] = 6U;

    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 31, cluster_start_addresses, cluster_lengths, 2, out_longest_safe_area_length_p);
    printf("%d, %d, %d \n", longest_safe_cluster_start_address, &cyber_asteroid_belt[16] + 6, out_longest_safe_area_length);
    assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[16] + 6);
    assert(out_longest_safe_area_length == 9);

    /*2*/
    cluster_start_addresses[0] = &cyber_asteroid_belt[0];
    cluster_start_addresses[1] = &cyber_asteroid_belt[16];

    cluster_lengths[0] = 6U;
    cluster_lengths[1] = 6U;

    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 31, cluster_start_addresses, cluster_lengths, 2, out_longest_safe_area_length_p);
    printf("%d, %d, %d \n", longest_safe_cluster_start_address, &cyber_asteroid_belt[0] + 6, out_longest_safe_area_length);
    assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[0] + 6);
    assert(out_longest_safe_area_length == 10);

    /*3*/
    cluster_start_addresses[0] = &cyber_asteroid_belt[0];
    cluster_start_addresses[1] = &cyber_asteroid_belt[16];

    cluster_lengths[0] = 7U;
    cluster_lengths[1] = 5U;

    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 31, cluster_start_addresses, cluster_lengths, 2, out_longest_safe_area_length_p);
    printf("%d, %d, %d \n", longest_safe_cluster_start_address, &cyber_asteroid_belt[16] + 5, out_longest_safe_area_length);
    assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[16] + 5);
    assert(out_longest_safe_area_length == 10);

    /*4*/
    cluster_start_addresses[0] = &cyber_asteroid_belt[1];
    cluster_start_addresses[1] = &cyber_asteroid_belt[16];

    cluster_lengths[0] = 6U;
    cluster_lengths[1] = 6U;

    longest_safe_cluster_start_address = get_longest_safe_zone_or_null(cyber_asteroid_belt, 31, cluster_start_addresses, cluster_lengths, 2, out_longest_safe_area_length_p);
    printf("%d, %d, %d \n", longest_safe_cluster_start_address, &cyber_asteroid_belt[16] + 6, out_longest_safe_area_length);
    assert(longest_safe_cluster_start_address == &cyber_asteroid_belt[16] + 6);
    assert(out_longest_safe_area_length == 9);
}

int main(void)
{    
    my_test_case();
    test_cab_length_upto_100();
    test_etc();
    B02_2ClustersNoOverlap4();

    {
        int test[5] = { 5, 5, 5, 5, 0 };
        int* first_ptr = test;
        int* last_ptr = first_ptr + 4;
        printf("first address: %p\n", (void*)first_ptr);
        printf("last address: %p\n", (void*)last_ptr);
        printf("Array test first value: %d\n", *first_ptr);
        printf("Array test last value: %d\n", *last_ptr);
        printf("Address difference: %d\n", last_ptr - first_ptr);
    }

    printf("No prob");

    return 0;
}
