
#ifdef TEST

#include "unity.h"

#include "ltypes.h"
#include "minOperations.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_minOperations_example_1(void)
{
	int input0[] = {3, 9, 7};
	int input1 = 5;
	int expected = 4;
	TEST_ASSERT_EQUAL_INT(expected, minOperations(input0, ARRAY_SIZE(input0), input1));
}

void test_minOperations_example_2(void)
{
	int input0[] = {4, 1, 3};
	int input1 = 4;
	int expected = 0;
	TEST_ASSERT_EQUAL_INT(expected, minOperations(input0, ARRAY_SIZE(input0), input1));
}

void test_minOperations_example_3(void)
{
	int input0[] = {3, 2};
	int input1 = 6;
	int expected = 5;
	TEST_ASSERT_EQUAL_INT(expected, minOperations(input0, ARRAY_SIZE(input0), input1));
}

#endif   // TEST
