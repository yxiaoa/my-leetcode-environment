
#include "summaryRanges.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
char **summaryRanges(int *nums, int numsSize, int *returnSize)
{
	if (numsSize == 0) {
		*returnSize = 0;
		return NULL;
	}

	char **result = (char **)malloc((unsigned int)numsSize * sizeof(char *));
	int count = 0;
	int i = 0;

	while (i < numsSize) {
		int start = nums[i];
		while (((i + 1) < numsSize) && (nums[i + 1] == (nums[i] + 1))) {
			i++;
		}
		int end = nums[i];

		char buffer[30];
		if (start == end) {
			(void)snprintf(buffer, sizeof(buffer), "%d", start);
		} else {
			(void)snprintf(buffer, sizeof(buffer), "%d->%d", start, end);
		}
		result[count] = strdup(buffer);
		count++;
		i++;
	}

	*returnSize = count;
	return result;
}
