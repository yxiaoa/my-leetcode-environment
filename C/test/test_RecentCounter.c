
#ifdef TEST

#include "unity.h"

#include "RecentCounter.h"
#include <string.h>

void setUp(void)
{
}

void tearDown(void)
{
}

void test_RecentCounter_1(void)
{
	char *input0[] = {"RecentCounter", "ping", "ping", "ping", "ping"};
	int input1[] = {0, 1, 100, 3001, 3002};
	int expected[] = {0, 1, 2, 3, 3};
	RecentCounter *obj = NULL;

	for (int i = 0; i < (sizeof(input0) / sizeof(input0[0])); i++) {
		if (strcmp(input0[i], "RecentCounter") == 0) {
			obj = recentCounterCreate();
			TEST_ASSERT_NOT_NULL(obj);
		} else if (strcmp(input0[i], "ping") == 0) {
			int result = recentCounterPing(obj, input1[i]);
			TEST_ASSERT_EQUAL_INT(expected[i], result);
		}
	}
}

#endif   // TEST
