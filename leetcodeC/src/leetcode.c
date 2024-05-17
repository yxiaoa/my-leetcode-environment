#include "leetcode.h"
#include <stdio.h>
#include <string.h>

int letterMap(const char *str, int *map)
{
	int cnt;
	for (cnt = 0; str[cnt] != '\0'; cnt++) {
		map[str[cnt] - 'a']++;
	}
	printf(str);
	return cnt;
}

int cmp_func(const void *a, const void *b)
{
	return *(int *)a - *(int *)b;
}

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
char **summaryRanges(int *nums, int numsSize, int *returnSize)
{
	// ntoi
	//TODO as number length is not fixed, it is hard to malloc
	*returnSize = 0;
	return NULL;
}

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* shortestToChar(char* s, char c, int* returnSize) {
	int len = strlen(s);
	int *ret = (int *)malloc(len * sizeof(int));
	*returnSize = len;

	int left = -len;
	int right = 0;
	int i = 0;
	while (i < len) {
		if ((s[right] != c) && (right < len)) {
			right++;
			continue;
		}
		int left_d = i - left;
		int right_d = right - i;
		ret[i++] = (left_d < right_d) ? left_d : right_d;
		//TODO cannot concise...
	}
	return ret;
}

char * makeSmallestPalindrome(char * s){
	int i = 0, j = strlen(s) - 1;
	while (i < j) {
		if (s[i] < s[j]) {
			s[j] = s[i];
		} else {
			s[i] = s[j];
		}
	}
	return s;
}
