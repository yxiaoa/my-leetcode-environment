#ifndef LEETCODE_H
#define LEETCODE_H

#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include "ltypes.h"

typedef struct Node {
	int val;
	int min;
	struct Node *next;
} Node_t;

typedef struct {
	int queue[100];
	int head;
	int tail;
} MyStack;

struct TreeNode {
	int val;
	struct TreeNode *left;
	struct TreeNode *right;
};

//TODO below
int* shortestToChar(char* s, char c, int* returnSize);
char **summaryRanges(int *nums, int numsSize, int *returnSize);
char** uncommonFromSentences(char* s1, char* s2, int* returnSize);
int *findIntersectionValues(int *nums1, int nums1Size, int *nums2, int nums2Size, int *returnSize);

#endif // LEETCODE_H
