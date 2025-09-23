
#include "recoverOrder.h"
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* recoverOrder(int* order, int orderSize, int* friends, int friendsSize, int* returnSize) {
	int *map = (int *)calloc(orderSize + 1, sizeof(int));
	for (int i = 0; i < friendsSize; i++) {
		map[friends[i]] = 1;
	}
	int *result = (int *)malloc(sizeof(int) * friendsSize);
	*returnSize = 0;
	for (int i = 0; i < orderSize; i++) {
		if (map[order[i]] == 1) {
			result[(*returnSize)++] = order[i];
		}
	}
	free(map);
	return result;
}
