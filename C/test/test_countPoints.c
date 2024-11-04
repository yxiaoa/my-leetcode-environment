#ifdef TEST

#include "unity.h"

#include "countPoints.h"

#define getLen(arr)     (sizeof(arr) / sizeof(arr[0]))

void setUp(void)
{
}

void tearDown(void)
{
}

void test_countPoints_Example_1(void)
{
	int _input0[][2] = {{1,3},{3,3},{5,3},{2,2}};
	int _input1[][3] = {{2,3,1},{4,3,1},{1,1,2}};
	int expect[] = {3,2,2};

	int input0Size = getLen(_input0), input0_colSize[input0Size];
	int *input0[input0Size];

	int input1Size = getLen(_input1), input1_colSize[input1Size];
	int *input1[input1Size];

	int retSize;
	int *output;

	for (int i = 0; i < input0Size; i++) {
		input0[i] = _input0[i];
		input0_colSize[i] = getLen(_input0[i]);
	}
	for (int i = 0; i < input1Size; i++) {
		input1[i] = _input1[i];
		input1_colSize[i] = getLen(_input1[i]);
	}
	output = countPoints(input0, input0Size, input0_colSize, input1, input1Size, input1_colSize, &retSize);
	TEST_ASSERT_EQUAL(getLen(expect), retSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, retSize);
}

void test_countPoints_Example_2(void)
{
	int _input0[][2] = {{1,1},{2,2},{3,3},{4,4},{5,5}};
	int _input1[][3] = {{1,2,2},{2,2,2},{4,3,2},{4,3,3}};
	int expect[] = {2,3,2,4};

	int input0Size = getLen(_input0), input0_colSize[input0Size];
	int *input0[input0Size];

	int input1Size = getLen(_input1), input1_colSize[input1Size];
	int *input1[input1Size];

	int retSize;
	int *output;

	for (int i = 0; i < input0Size; i++) {
		input0[i] = _input0[i];
		input0_colSize[i] = getLen(_input0[i]);
	}
	for (int i = 0; i < input1Size; i++) {
		input1[i] = _input1[i];
		input1_colSize[i] = getLen(_input1[i]);
	}
	output = countPoints(input0, input0Size, input0_colSize, input1, input1Size, input1_colSize, &retSize);
	TEST_ASSERT_EQUAL(getLen(expect), retSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, retSize);
}

#endif // TEST
