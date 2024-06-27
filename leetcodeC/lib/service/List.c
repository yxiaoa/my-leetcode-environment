#include "List.h"
#include <stdlib.h>

int list_get_len(ListNode_t *head)
{
	int len = 0;
	while (head != NULL) {
		len++;
		head = head->next;
	}
	return len;
}

int *list_to_int(struct ListNode *node, int *size)
{
	int i;
	int *ret = (int *)calloc(list_get_len(node), sizeof(int));
	for (i = 0; node != NULL; i++) {
		ret[i] = node->val;
		node = node->next;
	}
	*size = i;
	return ret;
}

struct ListNode *int_to_list(int *val, int size)
{
	struct ListNode *ret = (struct ListNode *)calloc(size, sizeof(struct ListNode));
	for (int i = 0; i < size; i++) {
		ret[i].val = val[i];
		ret[i].next = ((i + 1) < size) ? &ret[i + 1] : NULL;
	}
	return ret;
}

bool_t compare_list(struct ListNode *head1, struct ListNode *head2)
{
	bool_t ret;

	while ((head1 != NULL) && (head2 != NULL)) {
		if (head1->val != head2->val) {
			break;
		}
		head1 = head1->next;
		head2 = head2->next;
	}
	ret = ((head1 != NULL) || (head2 != NULL)) ? false : true;
	return ret;
}

struct ListNode *reverseList(struct ListNode *head)
{
	struct ListNode *pre = NULL, *cur = head, *next = head;
	while (cur != NULL) {
		next = cur->next;
		cur->next = pre;
		pre = cur;
		cur = next;
	}
	return pre;
}

struct ListNode *deleteDuplicates(struct ListNode *head)
{
	struct ListNode *cur = head;
	if (head != NULL) {
		while (cur->next != NULL) {
			if (cur->val == cur->next->val) {
				cur->next = cur->next->next;
			} else {
				cur = cur->next;
			}
		}
	}
	return head;
}
