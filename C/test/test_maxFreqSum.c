
#ifdef TEST

#include "unity.h"

#include "maxFreqSum.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_maxFreqSum_Example_1(void)
{
	char *input = "successes";
	int expected = 6;
	int actual = maxFreqSum(input);
	TEST_ASSERT_EQUAL(expected, actual);
}

void test_maxFreqSum_Example_2(void)
{
	char *input = "aeiaeia";
	int expected = 3;
	int actual = maxFreqSum(input);
	TEST_ASSERT_EQUAL(expected, actual);
}

#endif   // TEST
