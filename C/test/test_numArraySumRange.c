
#ifdef TEST

#include "unity.h"

#include "numArraySumRange.h"
#include <string.h>

void setUp(void)
{
}

void tearDown(void)
{
}

void test_numArraySumRange_Example_1(void)
{
	char *input0[] = {"NumArray", "sumRange", "sumRange", "sumRange"};
	int input1[] = {-2, 0, 3, -5, 2, -1};
	int input2[][2] = {{0, 2}, {2, 5}, {0, 5}};
	int expect[] = {1, -1, -3};
	NumArray *obj = NULL;
	for (int i = 0; i < sizeof(input0) / sizeof(input0[0]); i++) {
		if (strcmp(input0[i], "NumArray") == 0) {
			obj = numArrayCreate(input1, sizeof(input1) / sizeof(input1[0]));
			TEST_ASSERT_NOT_NULL(obj);
		} else if (strcmp(input0[i], "sumRange") == 0) {
			int output = numArraySumRange(obj, input2[i - 1][0], input2[i - 1][1]);
			TEST_ASSERT_EQUAL_INT(expect[i - 1], output);
		}
	}
}

#endif // TEST
