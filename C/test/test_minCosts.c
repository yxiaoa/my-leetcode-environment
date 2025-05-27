
#ifdef TEST

#include "unity.h"

#include "minCosts.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_minCosts_Example_1(void)
{
	int input[] = {5, 3, 4, 1, 3, 2};
	int expect[] = {5, 3, 3, 1, 1, 1};
	int *output;
	int retSize;
	output = minCosts(input, sizeof(input) / sizeof(input[0]), &retSize);
	TEST_ASSERT_EQUAL(sizeof(expect) / sizeof(expect[0]), retSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, retSize);
}

void test_minCosts_Example_2(void)
{
	int input[] = {1, 2, 4, 6, 7};
	int expect[] = {1, 1, 1, 1, 1};
	int *output;
	int retSize;
	output = minCosts(input, sizeof(input) / sizeof(input[0]), &retSize);
	TEST_ASSERT_EQUAL(sizeof(expect) / sizeof(expect[0]), retSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, retSize);
}

#endif   // TEST
