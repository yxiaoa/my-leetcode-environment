
#ifdef TEST

#include "unity.h"
#include "alternatingSum.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_alternatingSum_example_1(void)
{
	int input[] = {1, 3, 5, 7};
	int expect = -4;

	TEST_ASSERT_EQUAL(expect, alternatingSum(input, sizeof(input) / sizeof(input[0])));
}

void test_alternatingSum_example_2(void)
{
	int input[] = {100};
	int expect = 100;

	TEST_ASSERT_EQUAL(expect, alternatingSum(input, sizeof(input) / sizeof(input[0])));
}

#endif   // TEST
