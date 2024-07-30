#ifdef TEST

#include "unity.h"

#include "solution.h"
#include <string.h>

#define getLen(arr) (int)(sizeof(arr) / sizeof(arr[0]))
#define INPUT_SIZE  getLen(input)
#define INPUT0_SIZE getLen(input0)
#define INPUT1_SIZE getLen(input1)
#define INPUT2_SIZE getLen(input2)
#define EXPECT_SIZE getLen(expect)
#define FOR_EACH(i) for (int i = 0; i < INPUT_SIZE; i++)

static char msg[512];

void setUp(void)
{
}

void tearDown(void)
{
}

void test_makeSmallestPalindrome(void)
{
	char *input[] = {"egcfe", "abcd", "seven"};
	char *expect[] = {"efcfe", "abba", "neven"};
	char input_buf[256];

	FOR_EACH (i) {
		(void)sprintf(msg, "input %d\n", i);
		strcpy(input_buf, input[i]);
		TEST_ASSERT_EQUAL_STRING_MESSAGE(expect[i], makeSmallestPalindrome(input_buf), msg);
	}
}

void test_findIntersectionValues(void)
{
	int input01[] = {2, 3, 2}, input02[] = {1, 2}, expect0[] = {2, 1};
	int input11[] = {4, 3, 2, 3, 1}, input12[] = {2, 2, 5, 2, 3, 6}, expect1[] = {3, 4};
	int input21[] = {3, 4, 2, 3}, input22[] = {1, 5}, expect2[] = {0, 0};
	int *input[][2] = {
	        {input01, input02},
                {input11, input12},
                {input21, input22}
        };
	int inputSize[][2] = {
	        {getLen(input01), getLen(input02)},
	        {getLen(input11), getLen(input12)},
	        {getLen(input21), getLen(input22)}
        };
	int *expect[] = {expect0, expect1, expect2};
	int *output, retSize;

	FOR_EACH (i) {
		(void)sprintf(msg, "input %d\n", i);
		output = findIntersectionValues(input[i][0], inputSize[i][0], input[i][1], inputSize[i][1], &retSize);
		TEST_ASSERT_EQUAL(2, retSize);
		TEST_ASSERT_EQUAL_INT_ARRAY_MESSAGE(expect[i], output, retSize, msg);
	}
}

#endif   // TEST
