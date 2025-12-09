
#ifdef TEST

#include "unity.h"

#include "uniqueMorseRepresentations.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_uniqueMorseRepresentations_Example_1(void)
{
	char *input[] = {"gin", "zen", "gig", "msg"};
	int expected = 2;
	TEST_ASSERT_EQUAL(expected, uniqueMorseRepresentations(input, sizeof(input) / sizeof(input[0])));
}

void test_uniqueMorseRepresentations_Example_2(void)
{
	char *input[] = {"a"};
	int expected = 1;
	TEST_ASSERT_EQUAL(expected, uniqueMorseRepresentations(input, sizeof(input) / sizeof(input[0])));
}

#endif   // TEST
