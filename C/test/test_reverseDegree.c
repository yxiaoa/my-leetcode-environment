
#ifdef TEST

#include "unity.h"

#include "reverseDegree.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_reverseDegree_Example1(void)
{
	char *input = "abc";
	int expected = 148;
	int actual = reverseDegree(input);
	TEST_ASSERT_EQUAL(expected, actual);
}

void test_reverseDegree_Example2(void)
{
	char *input = "zaza";
	int expected = 160;
	int actual = reverseDegree(input);
	TEST_ASSERT_EQUAL(expected, actual);
}
#endif // TEST
