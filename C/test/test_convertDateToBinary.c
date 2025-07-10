
#ifdef TEST

#include "unity.h"

#include "convertDateToBinary.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_convertDateToBinary_Example_1(void)
{
	char *date = "2080-02-29";
	char *expected = "100000100000-10-11101";
	char *actual = convertDateToBinary(date);
	TEST_ASSERT_EQUAL_STRING(expected, actual);
}

void test_convertDateToBinary_Example_2(void)
{
	char *date = "1900-01-01";
	char *expected = "11101101100-1-1";
	char *actual = convertDateToBinary(date);
	TEST_ASSERT_EQUAL_STRING(expected, actual);
}

#endif // TEST
