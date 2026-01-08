
#ifdef TEST

#include "unity.h"

#include "findPoisonedDuration.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_findPoisonedDuration_Example_1(void)
{
	int input0[] = {1, 4};
	int input1 = 2;
	int expected = 4;
	TEST_ASSERT_EQUAL(expected, findPoisonedDuration(input0, sizeof(input0) / sizeof(input0[0]), input1));
}

void test_findPoisonedDuration_Example_2(void)
{
	int input0[] = {1, 2};
	int input1 = 2;
	int expected = 3;
	TEST_ASSERT_EQUAL(expected, findPoisonedDuration(input0, sizeof(input0) / sizeof(input0[0]), input1));
}

#endif   // TEST
