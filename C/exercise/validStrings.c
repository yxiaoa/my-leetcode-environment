
#include "validStrings.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static bool contains_consecutive_zeros(int num, int length)
{
	bool ret = false;
	int prev_bit = num & 1;
	int current_bit;
	for (int i = 1; i < length; i++) {
		current_bit = (num >> i) & 1;
		if ((current_bit | prev_bit) == 0) {
			ret = true;
			break;
		}
		prev_bit = current_bit;
	}
	return ret;
}

static void convert_to_binary_string(int num, int length, char *buffer)
{
	for (int i = 0; i < length; i++) {
		buffer[length - i - 1] = ((num >> i) & 1) + '0';
	}
	buffer[length] = '\0';
}

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
char **validStrings(int n, int *returnSize)
{
	int max_num = 1 << n;
	char **ret = (char **)malloc(max_num * sizeof(char *));
	int count = 0;

	for (int i = 0; i < max_num; i++) {
		if (!contains_consecutive_zeros(i, n)) {
			ret[count] = (char *)malloc((n + 1) * sizeof(char));
			convert_to_binary_string(i, n, ret[count]);
			count++;
		}
	}

	*returnSize = count;
	return ret;
}
