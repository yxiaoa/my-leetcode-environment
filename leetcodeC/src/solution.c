#include "solution.h"
#include <stdlib.h>
#include <string.h>

char *makeSmallestPalindrome(char *s)
{
	int i = 0, j = (int)strlen(s) - 1;
	while (i < j) {
		if (s[i] < s[j]) {
			s[j] = s[i];
		} else {
			s[i] = s[j];
		}
		i++, j--;
	}
	return s;
}

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
		if (1 == map[1][nums1[i]]) {
			ret[0]++;
		}
	}
	for (i = 0; i < nums2Size; i++) {
		if (1 == map[0][nums2[i]]) {
			ret[1]++;
		}
	}
	return ret;
}
