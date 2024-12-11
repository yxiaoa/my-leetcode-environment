#ifdef TEST

#include "unity.h"

#include "makeSmallestPalindrome.h"
#include <string.h>

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
	char msg[512];

	for (int i = 0; i < sizeof(input) / sizeof(input[0]); i++) {
		(void)sprintf(msg, "input %d\n", i);
		strcpy(input_buf, input[i]);
		TEST_ASSERT_EQUAL_STRING_MESSAGE(expect[i], makeSmallestPalindrome(input_buf), msg);
	}
}

#endif   // TEST
