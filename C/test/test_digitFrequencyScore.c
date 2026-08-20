
#ifdef TEST

#include "unity.h"

#include "digitFrequencyScore.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_digitFrequencyScore(void)
{
	int input[] = {122, 101};
	int expect[] = {5, 2};
	for (unsigned int i = 0; i < (sizeof(input) / sizeof(input[0])); i++) {
		TEST_ASSERT_EQUAL_INT(expect[i], digitFrequencyScore(input[i]));
	}
}

#endif   // TEST
