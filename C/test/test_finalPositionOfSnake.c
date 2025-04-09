
#ifdef TEST

#include "unity.h"

#include "finalPositionOfSnake.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_finalPositionOfSnake_1(void)
{
	int n = 2;
	char* commands[] = {"RIGHT","DOWN"};
	int expect= 3;

	TEST_ASSERT_EQUAL(expect, finalPositionOfSnake(n, commands, sizeof(commands)/sizeof(commands[0])));
}

void test_finalPositionOfSnake_2(void)
{
	int n = 3;
	char* commands[] = {"DOWN","RIGHT","UP"};
	int expect= 1;

	TEST_ASSERT_EQUAL(expect, finalPositionOfSnake(n, commands, sizeof(commands)/sizeof(commands[0])));
}

#endif // TEST
