
#ifdef TEST

#include "unity.h"

#include "summaryRanges.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_summaryRanges_example_1(void)
{
	int input0[] = {0, 1, 2, 4, 5, 7};
	char *expected[] = {"0->2", "4->5", "7"};
	int returnSize;
	char **output = summaryRanges(input0, sizeof(input0) / sizeof(input0[0]), &returnSize);
	TEST_ASSERT_EQUAL_INT(sizeof(expected) / sizeof(expected[0]), returnSize);
	TEST_ASSERT_EQUAL_STRING_ARRAY(expected, output, returnSize);
}

void test_summaryRanges_example_2(void)
{
	int input0[] = {0,2,3,4,6,8,9};
	char *expected[] = {"0", "2->4", "6", "8->9"};
	int returnSize;
	char **output = summaryRanges(input0, sizeof(input0) / sizeof(input0[0]), &returnSize);
	TEST_ASSERT_EQUAL_INT(sizeof(expected) / sizeof(expected[0]), returnSize);
	TEST_ASSERT_EQUAL_STRING_ARRAY(expected, output, returnSize);
}

#endif   // TEST
