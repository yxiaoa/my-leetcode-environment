
#ifdef TEST

#include "unity.h"

#include "findDegrees.h"
#include <stdlib.h>

void setUp(void)
{
}

void tearDown(void)
{
}

void test_findDegrees_example_1(void)
{
	int _input[][3] = {{0, 1, 1}, {1, 0, 1}, {1, 1, 0}};
	int *input[] = {_input[0], _input[1], _input[2]};
	int colSizes[] = {3, 3, 3};
	int expect[] = {2, 2, 2};
	int retSize;

	int *output = findDegrees(input, sizeof(input) / sizeof(input[0]), colSizes, &retSize);
	TEST_ASSERT_EQUAL(sizeof(expect) / sizeof(expect[0]), retSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, retSize);
	free(output);
}

#endif // TEST
