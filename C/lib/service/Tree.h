#ifndef TREE_H
#define TREE_H

#include "ltypes.h"

typedef void (*tree_traversal_hdl_t)(s32 val);

typedef struct TreeNode {
	s32 val;
	struct TreeNode *left;
	struct TreeNode *right;
} TreeNode_t;

s32 *preorderTraversal(struct TreeNode *root, int *returnSize);
s32 *inorderTraversal(struct TreeNode *root, s32 *returnSize);
u32 inorderTraversal_cb(struct TreeNode *root, tree_traversal_hdl_t hdl);
TreeNode_t *array_to_tree(int *arr, int size);

#endif // TREE_H
