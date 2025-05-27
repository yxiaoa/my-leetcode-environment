
#include "minCosts.h"
/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *minCosts(int *cost, int costSize, int *returnSize)
{
	int *result = (int *)malloc(costSize * sizeof(int));
	int min = cost[0];
	result[0] = min;
	for (int i = 1; i < costSize; i++) {
		min = (cost[i] < min) ? cost[i] : min;
		result[i] = min;
	}
	*returnSize = costSize;
	return result;
}
