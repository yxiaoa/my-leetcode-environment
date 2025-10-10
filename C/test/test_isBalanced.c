
#ifdef TEST

#include "unity.h"

#include "isBalanced.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_isBalanced_example(void)
{
	TEST_ASSERT_FALSE(isBalanced("1234"));
	TEST_ASSERT_TRUE(isBalanced("24123"));
}

#endif // TEST
