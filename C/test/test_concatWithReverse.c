
#ifdef TEST

#include "unity.h"

#include "concatWithReverse.h"
#include <stdlib.h>

static void test_execution(int *input, int inputSize, int *expected, int expectedSize)
{
	int returnSize;
	int *output = concatWithReverse(input, inputSize, &returnSize);
	TEST_ASSERT_EQUAL(expectedSize, returnSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expected, output, returnSize);
	free(output);
}

void setUp(void)
{
}

void tearDown(void)
{
}

void test_concatWithReverse_Example_1(void)
{
	int input[] = {1, 2, 3};
	int expected[] = {1, 2, 3, 3, 2, 1};
	test_execution(input, sizeof(input) / sizeof(input[0]), expected, sizeof(expected) / sizeof(expected[0]));
}

void test_concatWithReverse_Example_2(void)
{
	int input[] = {1};
	int expected[] = {1, 1};
	test_execution(input, sizeof(input) / sizeof(input[0]), expected, sizeof(expected) / sizeof(expected[0]));
}

#endif   // TEST
