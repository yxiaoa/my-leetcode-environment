
#include "readBinaryWatch.h"
#include <stdlib.h>
#include <stdio.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
char **readBinaryWatch(int turnedOn, int *returnSize)
{
	char **ret = (char **)malloc(sizeof(char *) * 200);
	int count = 0;
	for (int h = 0; h < 12; h++) {
		for (int m = 0; m < 60; m++) {
			int bits = __builtin_popcount(h) + __builtin_popcount(m);
			if (bits == turnedOn) {
				ret[count] = (char *)malloc(sizeof(char) * 6);
				(void)sprintf(ret[count], "%d:%02d", h, m);
				count++;
			}
		}
	}
	*returnSize = count;
	return ret;
}
