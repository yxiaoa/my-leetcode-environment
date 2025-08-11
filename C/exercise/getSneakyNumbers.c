
#include "getSneakyNumbers.h"
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *getSneakyNumbers(int *nums, int numsSize, int *returnSize)
{
	int *sneakyNumbers = (int *)malloc(2 * sizeof(int));
	int *cnt = (int *)calloc(numsSize - 2, sizeof(int));
	*returnSize = 0;

	for (int i = 0; i < numsSize; i++) {
		if (cnt[nums[i]] == 1) {
			sneakyNumbers[(*returnSize)++] = nums[i];
			if (*returnSize > 1) {
				break;
			}
		}
		cnt[nums[i]]++;
	}
	free(cnt);
	return sneakyNumbers;
}
