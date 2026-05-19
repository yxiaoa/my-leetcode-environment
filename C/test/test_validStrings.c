
#ifdef TEST

#include "unity.h"

#include "validStrings.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_validStrings_example_1(void)
{
	int input = 3;
	char *expect[] = {"010","011","101","110","111"};
	int retSize = 0;

	char **output = validStrings(input, &retSize);
	printf("Output:\n");
	for (int i = 0; i < retSize; i++) {
		printf("%s,", output[i]);
	}
	printf("\n");
	fflush(stdout);
	TEST_ASSERT_EQUAL(sizeof(expect) / sizeof(expect[0]), retSize);
	TEST_ASSERT_EQUAL_STRING_ARRAY(expect, output, retSize);
}

#endif // TEST
