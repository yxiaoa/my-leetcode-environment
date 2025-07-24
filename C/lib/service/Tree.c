#include "Tree.h"
#include <malloc.h>

s32 *preorderTraversal(struct TreeNode *root, int *returnSize)
{
	s32 si = 0, ri = 0, *ret = NULL;
	struct TreeNode *stack[100], *cur;

	if (root != NULL) {
		cur = root;
		ret = (s32 *)calloc(100, sizeof(s32));
		for (;;) {
			if (cur != NULL) {
				ret[ri++] = cur->val;
				stack[si++] = cur;
				cur = cur->left;
			} else if (si > 0) {
				cur = stack[--si]->right;
			} else {
				break;
			}
		}
	}
	*returnSize = ri;
	return ret;
}

s32 *inorderTraversal(struct TreeNode *root, s32 *returnSize)
{
	s32 si = 0, ri = 0, *ret = NULL;
	struct TreeNode *stack[100], *cur;

	if (root != NULL) {
		cur = root;
		ret = (s32 *)calloc(100, sizeof(s32));
		while ((cur != NULL) || (si > 0)) {
			if (cur != NULL) {
				stack[si++] = cur;
				cur = cur->left;
			} else {
				ret[ri++] = stack[--si]->val;
				cur = stack[si]->right;
			}
		}
	}
	*returnSize = ri;
	return ret;
}

u32 inorderTraversal_cb(struct TreeNode *root, tree_traversal_hdl_t hdl)
{
	u32 cnt = 0U;
	s32 si = 0, ri = 0;
	struct TreeNode *stack[100], *cur;

	if (root != NULL) {
		cur = root;
		while ((cur != NULL) || (si > 0)) {
			if (cur != NULL) {
				stack[si++] = cur;
				cur = cur->left;
			} else {
				hdl(stack[--si]->val);
				cnt++;
				cur = stack[si]->right;
			}
		}
	}
	return cnt;
}

int *postorderTraversal(struct TreeNode *root, int *returnSize)
{
	s32 si = 0, ri = 0, *ret;
	struct TreeNode *stack[100], *cur, *last;

	if (root == NULL) {
		*returnSize = 0;
		return NULL;
	}

	cur = root;
	last = NULL;
	ret = (s32 *)calloc(100, sizeof(s32));
	while (((cur != NULL)||(si > 0))) {
		if (cur != NULL) {
			stack[si++] = cur;
			cur = cur->left;
		} else {
			cur = stack[si - 1];
			if ((cur->right == NULL) || (cur->right == last)) {
				ret[ri++] = cur->val;
				last = cur;
				cur = NULL;
				--si;
			} else {
				cur = cur->right;
			}
		}
	}
	*returnSize = ri;
	return ret;
}

TreeNode_t *array_to_tree(int *arr, int size)
{
	if (size <= 0 || arr == NULL) {
		return NULL;
	}

	TreeNode_t *root = (TreeNode_t *)malloc(sizeof(TreeNode_t));
	if (root == NULL) {
		return NULL; // Memory allocation failed
	}

	root->val = arr[0];
	root->left = NULL;
	root->right = NULL;

	TreeNode_t **nodes = (TreeNode_t **)malloc(size * sizeof(TreeNode_t *));
	if (nodes == NULL) {
		free(root);
		return NULL; // Memory allocation failed
	}
	nodes[0] = root;

	for (int i = 1; i < size; i++) {
		if (arr[i] != -1) { // Assuming -1 indicates a null node
			TreeNode_t *node = (TreeNode_t *)malloc(sizeof(TreeNode_t));
			if (node == NULL) {
				for (int j = 0; j < i; j++) {
					free(nodes[j]);
				}
				free(nodes);
				return NULL; // Memory allocation failed
			}
			node->val = arr[i];
			node->left = NULL;
			node->right = NULL;
			nodes[i] = node;

			int parentIndex = (i - 1) / 2;
			if (i % 2 == 1) { // Left child
				nodes[parentIndex]->left = node;
			} else { // Right child
				nodes[parentIndex]->right = node;
			}
		} else {
			nodes[i] = NULL; // Null node
		}
	}

	free(nodes);
	return root;
}
