#include "shortestToChar.h"
#include <stdlib.h>
#include <string.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* shortestToChar(char* s, char c, int* returnSize) {
	int len = strlen(s);
	int *ret = (int *)malloc(sizeof(int) * len);
	int *pos = (int *)malloc(sizeof(int) * (len + 2));
	int pos_len = 1;
	pos[0] = -len;
	for (int i = 0; i < len; i++) {
		if (s[i] == c) {
			pos[pos_len++] = i;
		}
	}
	pos[pos_len++] = len << 1;
	int pos_idx = 1;
	for (int i = 0; i < len; i++) {
		if (s[i] == c) {
			ret[i] = 0;
			pos_idx++;
		} else {
			int left = i - pos[pos_idx - 1];
			int right = pos[pos_idx] - i;
			ret[i] = left < right ? left : right;
		}
	}
	*returnSize = len;
	free(pos);
	return ret;
}
