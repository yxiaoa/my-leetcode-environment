
#ifdef TEST

#include "unity.h"

#include "reversePrefix.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_reversePrefix_example_1(void)
{
	char input0[] = "abcd";
	int input1 = 2;
	char *expected = "bacd";
	TEST_ASSERT_EQUAL_STRING(expected, reversePrefix(input0, input1));
}

void test_reversePrefix_example_2(void)
{
	char input0[] = "xyz";
	int input1 = 3;
	char *expected = "zyx";
	TEST_ASSERT_EQUAL_STRING(expected, reversePrefix(input0, input1));
}

void test_reversePrefix_example_3(void)
{
	char input0[] = "hey";
	int input1 = 1;
	char *expected = "hey";
	TEST_ASSERT_EQUAL_STRING(expected, reversePrefix(input0, input1));
}
#endif   // TEST
