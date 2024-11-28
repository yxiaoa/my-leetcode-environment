#ifdef TEST

#include "unity.h"

#include "shortestToChar.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_shortestToChar_Example_1(void)
{
	char *s = "loveleetcode", c = 'e';
	int expect[] = {3,2,1,0,1,0,0,1,2,2,1,0};

	int retSize;
	int *output;

	output = shortestToChar(s, c, &retSize);
	TEST_ASSERT_EQUAL(sizeof(expect)/sizeof(expect[0]), retSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, retSize);
}

void test_shortestToChar_Example_2(void)
{
	char *s = "aaab", c = 'b';
	int expect[] = {3,2,1,0};

	int retSize;
	int *output;

	output = shortestToChar(s, c, &retSize);
	TEST_ASSERT_EQUAL(sizeof(expect)/sizeof(expect[0]), retSize);
	TEST_ASSERT_EQUAL_INT_ARRAY(expect, output, retSize);
}

#endif // TEST
