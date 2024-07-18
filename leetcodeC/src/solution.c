#include "solution.h"
#include <stdlib.h>
#include <string.h>

char *makeSmallestPalindrome(char *s)
{
	int i = 0, j = strlen(s) - 1;
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
	int *ret = (int *)malloc(2 * sizeof(int));
	*returnSize = 2;
	return ret;
}
