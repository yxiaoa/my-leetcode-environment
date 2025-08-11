
#ifdef TEST

#include "unity.h"

#include "getSneakyNumbers.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_getSneakyNumbers_example_1(void)
{
	int input[] = {0, 1, 1, 0};
	int expect[] = {1, 0};
	int *output = NULL;
	int outputSize = 0;

	output = getSneakyNumbers(input, sizeof(input) / sizeof(input[0]), &outputSize);

	TEST_ASSERT_NOT_NULL(output);
	TEST_ASSERT_EQUAL_INT(2, outputSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, outputSize);

	free(output);
}

void test_getSneakyNumbers_example_2(void)
{
	int input[] = {0, 3, 2, 1, 3, 2};
	int expect[] = {3, 2};
	int *output = NULL;
	int outputSize = 0;

	output = getSneakyNumbers(input, sizeof(input) / sizeof(input[0]), &outputSize);

	TEST_ASSERT_NOT_NULL(output);
	TEST_ASSERT_EQUAL_INT(2, outputSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, outputSize);

	free(output);
}

void test_getSneakyNumbers_example_3(void)
{
	int input[] = {7, 1, 5, 4, 3, 4, 6, 0, 9, 5, 8, 2};
	int expect[] = {4, 5};
	int *output = NULL;
	int outputSize = 0;

	output = getSneakyNumbers(input, sizeof(input) / sizeof(input[0]), &outputSize);

	TEST_ASSERT_NOT_NULL(output);
	TEST_ASSERT_EQUAL_INT(2, outputSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, outputSize);

	free(output);
}

#endif   // TEST
