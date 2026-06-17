
#include "findDegrees.h"
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *findDegrees(int **matrix, int matrixSize, int *matrixColSize, int *returnSize)
{
	int *degrees = (int *)malloc((unsigned int)matrixSize * sizeof(int));
	for (int j = 0; j < matrixColSize[0]; j++) {
		degrees[j] = 0;
		for (int i = 0; i < matrixSize; i++) {
			degrees[j] += matrix[i][j];
		}
	}
	*returnSize = matrixSize;
	return degrees;
}
