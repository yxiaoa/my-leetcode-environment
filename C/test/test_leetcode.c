#include "unity.h"

#include "leetcode.h"
#include "List.h"
#include <time.h>
//#include <windows.h>

#define getLen(arr)     (sizeof(arr) / sizeof(arr[0]))
#define INPUT0_SIZE     getLen(input0)
#define INPUT2_SIZE     getLen(input2)
#define EXPECT_SIZE     getLen(expect)
#define FOR_EACH(i)     for (int i = 0; i < INPUT0_SIZE; i++)
//#define TIME_CNT
#define LOOP_TIMES      (1000000)

/* DATA TYPE */
#define SINGLE_VALUE    0
#define ARRAY_1         1
#define ARRAY_2         2
#define ARRAY_TREE      3

#define TEST_INPUT(x)  (x << 8)
#define TEST_OUTPUT(x) (x)
#define INPUT_CLASS    (TEST_CLASS >> 8)
#define OUTPUT_CLASS   (TEST_CLASS & 0xFFU)

#define INPUT_OUTPUT_CLASS(x, y)                (TEST_INPUT(x) | TEST_OUTPUT(y))
#define TEST_CLASS_INPUT_VAR_OUTPUT_VAR         (TEST_INPUT(SINGLE_VALUE) | TEST_OUTPUT(SINGLE_VALUE))
#define TEST_CLASS_INPUT_1_ARRAY_OUTPUT_VAR     (TEST_INPUT(ARRAY_1) | TEST_OUTPUT(SINGLE_VALUE))
#define TEST_CLASS_INPUT_1_ARRAY_OUTPUT_1_ARRAY (TEST_INPUT(ARRAY_1) | TEST_OUTPUT(ARRAY_1))
#define TEST_CLASS_INDIVIDUAL                   -1

char msg[512];
long start_tick, end_tick;
clock_t start, end;

void setUp(void)
{
}

void tearDown(void)
{
}

#define TEST_CLASS      INPUT_OUTPUT_CLASS(SINGLE_VALUE, ARRAY_1)

#define INPUT0_TYPE     char*
#define INPUT1_TYPE     char*
#define OUTPUT_TYPE     char*

#if TEST_CLASS == TEST_CLASS_INPUT_VAR_OUTPUT_VAR
#define INPUT0_DATA	{"egcfe", "abcd", "seven"}
#define INPUT1_DATA	{'e'}
#define EXPECT_VALUE	{"efcfe", "abba", "neven"}
#endif

#define TEST_FUNC_OUTPUT uncommonFromSentences(input0, input1, &retSize)
#define ASSERT_FUNC      TEST_ASSERT_EQUAL_STRING_MESSAGE

#if TEST_CLASS == TEST_CLASS_INPUT_VAR_OUTPUT_VAR
void test_1(void)
{
	INPUT0_TYPE input0[] = INPUT0_DATA;
	INPUT1_TYPE input1[] = INPUT1_DATA;
	OUTPUT_TYPE expect[] = EXPECT_VALUE;

#ifdef TIME_CNT
	start = clock();
	for (int cnt = 0; cnt < 1000000; cnt++) {
#endif
	FOR_EACH (i) {
		(void)sprintf(msg, "input %d\n", i);
		ASSERT_FUNC(expect[i], TEST_FUNC_OUTPUT, msg);
	}
#ifdef TIME_CNT
	}
	end = clock();
	printf("exe_time %d\n", end - start);
#endif
}

#elif TEST_CLASS == TEST_CLASS_INPUT_1_ARRAY_OUTPUT_VAR
void test_1(void)
{
	INPUT0_TYPE input0[] = {"cd","ac","dc","ca","zz"};
	INPUT1_TYPE input1 = {10};
	OUTPUT_TYPE expect = 2;

	ASSERT_FUNC(expect, TEST_FUNC_OUTPUT);
}
void test_2(void)
{
	INPUT0_TYPE input0[] = {"ab","ba","cc"};
	INPUT1_TYPE input1 = {1};
	OUTPUT_TYPE expect = 1;

	ASSERT_FUNC(expect, TEST_FUNC_OUTPUT);
}
void test_3(void)
{
	INPUT0_TYPE input0[] = {"aa","ab"};
	INPUT1_TYPE input1 = {9};
	OUTPUT_TYPE expect = 0;

	ASSERT_FUNC(expect, TEST_FUNC_OUTPUT);
}
#elif TEST_CLASS == INPUT_OUTPUT_CLASS(SINGLE_VALUE, ARRAY_1)
void test_1(void)
{
	INPUT0_TYPE input0 = "this apple is sweet";
	INPUT1_TYPE input1 = "this apple is sour";
	OUTPUT_TYPE expect[] = {"sweet","sour"};
	OUTPUT_TYPE *output;
	int retSize;

	output = TEST_FUNC_OUTPUT;
	TEST_ASSERT_EQUAL(EXPECT_SIZE, retSize);
	ASSERT_FUNC(expect, output, retSize);
}
#elif TEST_CLASS == TEST_CLASS_INPUT_1_ARRAY_OUTPUT_1_ARRAY
void test_1(void)
{
	INPUT0_TYPE input[] = {5,4,2,3};
	INPUT1_TYPE input1 = 'e';
	OUTPUT_TYPE expect[] = {3,2,5,4};
	OUTPUT_TYPE *output;
	int retSize;

	output = TEST_FUNC_OUTPUT;
	TEST_ASSERT_EQUAL(EXPECT_SIZE, retSize);
	ASSERT_FUNC(expect, output, retSize);
}
#elif TEST_CLASS == TEST_CLASS_ARRAY_2
#define COLOMN_SIZE         4
void test_4(void)
{
	int _input[][COLOMN_SIZE] = {{-1}};
	int *input[sizeof(_input) / sizeof(_input[0])], inputSize = sizeof(input) / sizeof(input[0]), colSize[sizeof(input) / sizeof(input[0])];
	for (int i = 0; i < inputSize; i++) {
		input[i] = _input[i];
		colSize[i] = sizeof(_input[i]) / sizeof(_input[i][0]);
	}

	int exp = 1;

	TEST_ASSERT_EQUAL(exp, countNegatives(input, inputSize, colSize));
}

#elif TEST_CLASS == TEST_CLASS_INDIVIDUAL
void test_1(void)
{
	int input[] = {5,4,3,2,1};
	int retSize = 0;
	char *expect[] = {"Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"};
	char **output;

	output = findRelativeRanks(input, INPUT_SIZE, &retSize);

	TEST_ASSERT_EQUAL(EXPECT_SIZE, retSize);
	TEST_ASSERT_EQUAL_STRING_ARRAY(expect, output, retSize);
}
#elif TEST_CLASS == INPUT_OUTPUT_CLASS(ARRAY_TREE, SINGLE_VALUE)
void test_1(void)
{
	int input[] = {3, 9, 20, -1, -1, 15, 7};
	int output;
	bool expect = false;

	struct TreeNode *input_tree =
	        (struct TreeNode *)malloc(INPUT_SIZE * sizeof(struct TreeNode));
	for (int i = 0; i < INPUT_SIZE; i++) {
		input_tree[i].val = input[i];
	}
	input_tree[0].left = input_tree + 1;
	input_tree[0].right = input_tree + 2;
	input_tree[1].left = input_tree + 3;
	input_tree[1].right = input_tree + 4;
	input_tree[1].left = input_tree + 3;
	input_tree[1].right = input_tree + 4;

	output = isUnivalTree(input_tree);

	TEST_ASSERT_EQUAL(expect, output);
}
void test_2(void)
{
	int input[] = {3, 3, 3, 3, 3, 3, 3};
	int output;
	bool expect = true;

	struct TreeNode *input_tree =
	        (struct TreeNode *)malloc(INPUT_SIZE * sizeof(struct TreeNode));
	for (int i = 0; i < INPUT_SIZE; i++) {
		input_tree[i].val = input[i];
	}
	input_tree[0].left = input_tree + 1;
	input_tree[0].right = input_tree + 2;
	input_tree[1].left = input_tree + 3;
	input_tree[1].right = input_tree + 4;
	input_tree[1].left = input_tree + 3;
	input_tree[1].right = input_tree + 4;

	output = isUnivalTree(input_tree);

	TEST_ASSERT_EQUAL(expect, output);
}
#endif

# if 0 /* Special */
#define COLOMN_SIZE         4

void test_1(void)
{
	int _input[][COLOMN_SIZE] = {{3,0,8,4},{2,4,5,7},{9,2,6,3},{0,3,1,0}};
	int *input[sizeof(_input) / sizeof(_input[0])];
	int inputSize = sizeof(input) / sizeof(input[0]);
	int colSize[sizeof(input) / sizeof(input[0])];
	for (int i = 0; i < inputSize; i++) {
		input[i] = _input[i];
		colSize[i] = sizeof(_input[i]) / sizeof(_input[i][0]);
	}

	int expect = 35;

#ifdef TIME_CNT
	start = clock();
	for (int cnt = 0; cnt < 1000000; cnt++) {
#endif

		TEST_ASSERT_EQUAL(expect, maxIncreaseKeepingSkyline(input, inputSize, colSize));

#ifdef TIME_CNT
	}
	end = clock();
	printf("exe_time %d\n", end - start);
#endif
}
#endif

#if INPUT_OUTPUT_2_ARRAY
void test_1(void)
{
	int _input[][COLOMN_SIZE] = {{1,1,1},{1,0,1},{1,1,1}};
	int expect[][COLOMN_SIZE] = {{0,0,0},{0,0,0},{0,0,0}};
	int inputSize = getLen(_input), colSize[inputSize];
	int *input[inputSize];

	int retSize;
	int _retColSize[inputSize];
	int *retColSize[inputSize];

	for (int i = 0; i < inputSize; i++) {
		input[i] = _input[i];
		colSize[i] = getLen(_input[i]);
		retColSize[i] = &_retColSize[i];
	}

	int **output = imageSmoother(input, inputSize, colSize, &retSize, retColSize);

	TEST_ASSERT_EQUAL(getLen(expect), retSize);
	for (int i = 0; i < retSize; i++) {
		TEST_ASSERT_EQUAL_INT_ARRAY(expect[i], output[i], _retColSize[i]);
	}
}
#endif

#if OUTPUT_2_Arrary
#define TEST_MAX         8
void test_leetcode(void)
{
	int expi[][TEST_MAX] = {{1},
	                       {1, 1},
	                      {1, 2, 1},
			     {1, 3, 3, 1},
			   {1, 4, 6, 4, 1},
			 {1, 5, 10, 10, 5, 1},
			{1, 6, 15, 20, 15, 6, 1},
		      {1, 7, 21, 35, 35, 21, 7, 1},
				};
	int *exp[TEST_MAX];
	for (int i = 0; i < TEST_MAX; i++) {
		exp[i] = expi[i];
	}

	int retSize, *colSize, **output;
	char msg[512];
	for (int row = 1; row <= TEST_MAX; row++) {
		output = generate(row, &retSize, &colSize);
		TEST_ASSERT_EQUAL(row, retSize);
		for (int i = 0; i < retSize; i++) {
			(void)sprintf(msg, "input %d row %d\n", row, i);
			TEST_ASSERT_EQUAL_INT_ARRAY_MESSAGE(exp[i], output[i], colSize[i], msg);
		}
	}
}
#endif
