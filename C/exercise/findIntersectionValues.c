#include "findIntersectionValues.h"
#include <stdlib.h>

int *findIntersectionValues(int *nums1, int nums1Size, int *nums2, int nums2Size, int *returnSize)
{
	int i;
	int map[2][101] = {0};
	int *ret = (int *)malloc(2 * sizeof(int));

	ret[0] = 0;
	ret[1] = 0;
	*returnSize = 2;

	for (i = 0; i < nums1Size; i++) {
		map[0][nums1[i]] = 1;
	}
	for (i = 0; i < nums2Size; i++) {
		map[1][nums2[i]] = 1;
	}
	for (i = 0; i < nums1Size; i++) {
		ret[0] += map[1][nums1[i]];
	}
	for (i = 0; i < nums2Size; i++) {
		ret[1] += map[0][nums2[i]];
	}
	return ret;
}
