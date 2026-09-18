
#ifdef TEST

#include "unity.h"

#include "ltypes.h"
#include "mapWordWeights.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_mapWordWeights_Example_1(void)
{
	char *input0[] = {"abcd", "def", "xyz"};
	int input1[] = {5, 3, 12, 14, 1, 2, 3, 2, 10, 6, 6, 9, 7, 8, 7, 10, 8, 9, 6, 9, 9, 8, 3, 7, 7, 2};
	char *expect = "rij";
	TEST_ASSERT_EQUAL_STRING(expect, mapWordWeights(input0, ARRAY_SIZE(input0), input1, ARRAY_SIZE(input1)));
}

void test_mapWordWeights_Example_2(void)
{
	char *input0[] = {"a", "b", "c"};
	int input1[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
	char *expect = "yyy";
	TEST_ASSERT_EQUAL_STRING(expect, mapWordWeights(input0, ARRAY_SIZE(input0), input1, ARRAY_SIZE(input1)));
}

void test_mapWordWeights_Example_3(void)
{
	char *input0[] = {"abcd"};
	int input1[] = {7, 5, 3, 4, 3, 5, 4, 9, 4, 2, 2, 7, 10, 2, 5, 10, 6, 1, 2, 2, 4, 1, 3, 4, 4, 5};
	char *expect = "g";
	TEST_ASSERT_EQUAL_STRING(expect, mapWordWeights(input0, ARRAY_SIZE(input0), input1, ARRAY_SIZE(input1)));
}

#endif   // TEST
