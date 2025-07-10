
#include "convertDateToBinary.h"
#include <stdio.h>

static void intToBinary(int num, char *binary) {
	char temp[32];
	int i = 0;
	while (num > 0) {
		temp[i] = (num % 2) + '0';
		num /= 2;
		i++;
	}
	for (int j = 0; j < i; j++) {
		binary[j] = temp[i - 1 - j];
	}
	binary[i] = '\0';
}

char *convertDateToBinary(char *date)
{
	static char binaryDate[200];
	int year, month, day;

	(void)sscanf(date, "%d-%d-%d", &year, &month, &day);

	char yearBinary[32], monthBinary[32], dayBinary[32];
	intToBinary(year, yearBinary);
	intToBinary(month, monthBinary);
	intToBinary(day, dayBinary);

	(void)sprintf(binaryDate, "%s-%s-%s", yearBinary, monthBinary, dayBinary);

	return binaryDate;
}
