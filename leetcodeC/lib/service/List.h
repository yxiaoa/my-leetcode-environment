#ifndef LIST_H
#define LIST_H

#include <stdbool.h>
#include "ltypes.h"

typedef struct ListNode {
	int val;
	struct ListNode *next;
} ListNode_t;

int *list_to_int(struct ListNode *node, int *size);
struct ListNode *int_to_list(int *val, int size);
bool_t compare_list(struct ListNode *head1, struct ListNode *head2);
struct ListNode* reverseList(struct ListNode* head);
struct ListNode *deleteDuplicates(struct ListNode *head);

#endif
