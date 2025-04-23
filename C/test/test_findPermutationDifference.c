
#ifdef TEST

#include "unity.h"

#include "findPermutationDifference.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_findPermutationDifference_Example1(void)
{
	char *s = "abc", *t = "bac";
	int expect = 2;
	TEST_ASSERT_EQUAL(expect, findPermutationDifference(s, t));
}

void test_findPermutationDifference_Example2(void)
{
	char *s = "abcde", *t = "edbac";
	int expect = 12;
	TEST_ASSERT_EQUAL(expect, findPermutationDifference(s, t));
}

#endif // TEST
