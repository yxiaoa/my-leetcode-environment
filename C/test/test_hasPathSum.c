
#ifdef TEST

#include "unity.h"

#include "hasPathSum.h"

#ifndef null
#define null NULL
#endif

void setUp(void)
{
}

void tearDown(void)
{
}

void test_hasPathSum_Example_1(void)
{
	int root[] = {5, 4, 8, 11, null, 13, 4, 7, 2, null, null, null, 1};
	int targetSum = 22;
	bool expected = true;
	TEST_ASSERT_EQUAL(expected, hasPathSum(array_to_tree(root, sizeof(root) / sizeof(root[0])), targetSum));
}

void test_hasPathSum_Example_2(void)
{
	int root[] = {1,2,3};
	int targetSum = 5;
	bool expected = false;
	TEST_ASSERT_EQUAL(expected, hasPathSum(array_to_tree(root, sizeof(root) / sizeof(root[0])), targetSum));
}

void test_hasPathSum_Example_3(void)
{
	int root[0];
	int targetSum = 0;
	bool expected = false;
	TEST_ASSERT_EQUAL(expected, hasPathSum(array_to_tree(root, sizeof(root) / sizeof(root[0])), targetSum));
}

#endif // TEST
