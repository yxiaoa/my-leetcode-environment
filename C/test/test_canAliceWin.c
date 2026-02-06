
#ifdef TEST

#include "unity.h"

#include "canAliceWin.h"
#include "ltypes.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_canAliceWin_Example_1(void)
{
	int input[] = {1, 2, 3, 4, 10};
	bool expected = false;
	TEST_ASSERT_EQUAL(expected, canAliceWin(input, ARRAY_SIZE(input)));
}

void test_canAliceWin_Example_2(void)
{
	int input[] = {1, 2, 3, 4, 5, 14};
	bool expected = true;
	TEST_ASSERT_EQUAL(expected, canAliceWin(input, ARRAY_SIZE(input)));
}

void test_canAliceWin_Example_3(void)
{
	int input[] = {5, 5, 5, 25};
	bool expected = true;
	TEST_ASSERT_EQUAL(expected, canAliceWin(input, ARRAY_SIZE(input)));
}

#endif   // TEST
