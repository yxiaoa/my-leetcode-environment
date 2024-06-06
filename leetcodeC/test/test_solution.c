#ifdef TEST

#include "unity.h"

#include "solution.h"
#include <string.h>

#define getLen(arr)     (sizeof(arr) / sizeof(arr[0]))
#define INPUT0_SIZE     getLen(input0)
#define INPUT1_SIZE     getLen(input1)
#define INPUT2_SIZE     getLen(input2)
#define EXPECT_SIZE     getLen(expect)
#define FOR_EACH(i)     for (int i = 0; i < INPUT0_SIZE; i++)

static char msg[512];

void setUp(void)
{
}

void tearDown(void)
{
}

void test_makeSmallestPalindrome(void)
{
	char* input0[] = {"egcfe", "abcd", "seven"};
	char* expect[] = {"efcfe", "abba", "neven"};
	char input_buf[256];

	FOR_EACH (i) {
		(void)sprintf(msg, "input %d\n", i);
		strcpy(input_buf, input0[i]);
		TEST_ASSERT_EQUAL_STRING_MESSAGE(expect[i], makeSmallestPalindrome(input_buf), msg);
	}
}

#endif // TEST
