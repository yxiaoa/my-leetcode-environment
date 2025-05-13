
#ifdef TEST

#include "unity.h"

#include "findClosest.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_findClosest_Example_1(void)
{
	TEST_ASSERT_EQUAL(1, findClosest(2, 7, 4));
}

void test_findClosest_Example_2(void)
{
	TEST_ASSERT_EQUAL(2, findClosest(2, 5, 6));
}

void test_findClosest_Example_3(void)
{
	TEST_ASSERT_EQUAL(0, findClosest(1, 5, 3));
}

#endif   // TEST
