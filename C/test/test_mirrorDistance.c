
#ifdef TEST

#include "unity.h"

#include "mirrorDistance.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_mirrorDistance_example_1(void)
{
	int input = 25;
	int expect = 27;
	TEST_ASSERT_EQUAL_INT(expect, mirrorDistance(input));
}

void test_mirrorDistance_example_2(void)
{
	int input = 10;
	int expect = 9;
	TEST_ASSERT_EQUAL_INT(expect, mirrorDistance(input));
}

void test_mirrorDistance_example_3(void)
{
	int input = 7;
	int expect = 0;
	TEST_ASSERT_EQUAL_INT(expect, mirrorDistance(input));
}

#endif   // TEST
