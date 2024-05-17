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

char **summaryRanges(int *nums, int numsSize, int *returnSize);
int maximizeSum(int* nums, int numsSize, int k);


int* shortestToChar(char* s, char c, int* returnSize);
char* decodeMessage(char* key, char* message);

#endif // LEETCODE_H
