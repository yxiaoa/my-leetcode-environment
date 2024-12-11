#ifdef TEST

#include "unity.h"

#include "countTestedDevices.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_countTestedDevices_Example_1(void)
{
	int input[] = {1, 1, 2, 1, 3};
	int expect = 3;

	int retSize;
	int output;

	output = countTestedDevices(input, sizeof(input) / sizeof(input[0]));
	TEST_ASSERT_EQUAL(expect, output);
}

void test_countTestedDevices_Example_2(void)
{
	int input[] = {0, 1, 2};
	int expect = 2;

	int retSize;
	int output;

	output = countTestedDevices(input, sizeof(input) / sizeof(input[0]));
	TEST_ASSERT_EQUAL(expect, output);
}

#endif   // TEST
