#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

/*
    insert_sorted 구현
    pp가 가르키는 것은 다음 노드 주소의 주소
*/

#include "linked_list.h"
#include "test.h"

int main(void)
{
    test_insert_front();
    test_insert_back();
    test_insert_sorted();
    test_delet_by_value();

    puts("No prob");

    return 0;
}
