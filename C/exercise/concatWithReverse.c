
#include "concatWithReverse.h"
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *concatWithReverse(int *nums, int numsSize, int *returnSize)
{
	int *ret = (int *)malloc(sizeof(int) * numsSize * 2);
	int j = (numsSize * 2) - 1;
	for (int i = 0; i < numsSize; i++) {
		ret[i] = nums[i];
		ret[j] = nums[i];
		j--;
	}
	*returnSize = numsSize * 2;
	return ret;
}
