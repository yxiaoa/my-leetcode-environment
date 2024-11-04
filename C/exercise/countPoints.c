#include "countPoints.h"
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *countPoints(int **points, int pointsSize, int *pointsColSize, int **queries, int queriesSize, int *queriesColSize,
                 int *returnSize)
{
	*returnSize = queriesSize;
	int *ret = (int *)malloc(sizeof(int) * (unsigned int)pointsSize);
	for (int j = 0; j < queriesSize; j++) {
		int qx = queries[j][0];
		int qy = queries[j][1];
		int qr = queries[j][2];
		int count = 0;
		for (int i = 0; i < pointsSize; i++) {
			int x = points[i][0];
			int y = points[i][1];
			if ((((x - qx) * (x - qx)) + ((y - qy) * (y - qy))) <= (qr * qr)) {
				count++;
			}
		}
		ret[j] = count;
	}
	return ret;
}
