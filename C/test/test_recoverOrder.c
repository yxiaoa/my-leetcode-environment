
#ifdef TEST

#include "unity.h"

#include "recoverOrder.h"
#include <stdlib.h>

void setUp(void)
{
}

void tearDown(void)
{
}

void test_recoverOrder_Example_1(void)
{
	int order[] = {3, 1, 2, 5, 4};
	int friends[] = {1, 3, 4};
	int expect[] = {3, 1, 4};
	int *result;
	int returnSize;

	result = recoverOrder(order, sizeof(order) / sizeof(order[0]), friends, sizeof(friends) / sizeof(friends[0]),
	                      &returnSize);

	TEST_ASSERT_NOT_NULL(result);
	TEST_ASSERT_EQUAL_INT(sizeof(expect) / sizeof(expect[0]), returnSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, result, returnSize);

	free(result);
}

void test_recoverOrder_Example_2(void)
{
	int order[] = {1, 4, 5, 3, 2};
	int friends[] = {2, 5};
	int expect[] = {5, 2};
	int *result;
	int returnSize;

	result = recoverOrder(order, sizeof(order) / sizeof(order[0]), friends, sizeof(friends) / sizeof(friends[0]),
	                      &returnSize);

	TEST_ASSERT_NOT_NULL(result);
	TEST_ASSERT_EQUAL_INT(sizeof(expect) / sizeof(expect[0]), returnSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, result, returnSize);

	free(result);
}

#endif   // TEST
