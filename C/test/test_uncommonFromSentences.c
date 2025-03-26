#ifdef TEST

#include "unity.h"

#include "uncommonFromSentences.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_uncommonFromSentences_Example_1(void)
{
	char *s1 = "this apple is sweet";
	char *s2 = "this apple is sour";
	char *expect[] = {"sweet","sour"};

	int retSize;
	char **output;

	output = uncommonFromSentences(s1, s2, &retSize);
	TEST_ASSERT_EQUAL(sizeof(expect)/sizeof(expect[0]), retSize);
	TEST_ASSERT_EQUAL_STRING_ARRAY(expect, output, retSize);
}

#endif // TEST
