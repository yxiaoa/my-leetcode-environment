#ifdef TEST

#include "unity.h"

#include "insertGreatestCommonDivisors.h"
#include "List.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_insertGreatestCommonDivisors_Example_1(void)
{
	int input[] = {18, 6, 10, 3};
	int expect[] = {18,6,6,2,10,1,3};

	int retSize;
	struct ListNode *output;

	output = insertGreatestCommonDivisors(int_to_list(input, sizeof(input) / sizeof(input[0])));
	int *_output = list_to_int(output, &retSize);
	TEST_ASSERT_EQUAL(sizeof(expect) / sizeof(expect[0]), retSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, _output, retSize);
}

#endif // TEST
