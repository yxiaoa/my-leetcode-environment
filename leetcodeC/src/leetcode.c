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

typedef struct {
	char *str;
	int cnt;
} word_t;

char** uncommonFromSentences(char* s1, char* s2, int* returnSize) {
	// split words
	int words_total = 1;
	int i;
	for (i = 0; s1[i] != '\0'; i++) {
		if (s1[i] == ' ') {
			words_total++;
		}
	}

	for (i = 0; s2[i] != '\0'; i++)
	{
		if (s2[i] == ' ') {
			words_total++;
		}
	}

	// search and count
	word_t *words_map = (word_t *)malloc(sizeof(word_t) * words_total);
	int words_cnt = 0;
		// sum = if = 1 ++, else --


	// find words which only 1


	return NULL;
}


