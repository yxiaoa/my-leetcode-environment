#include "insertGreatestCommonDivisors.h"
#include <stdlib.h>
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

static int gcd(int a, int b)
{
	while (b != 0) {
		int t = a % b;
		a = b;
		b = t;
	}
	return a;
}

struct ListNode* insertGreatestCommonDivisors(struct ListNode* head) {
	struct ListNode *p = head;
	struct ListNode *q = head->next;
	while (q != NULL) {
		int val = gcd(p->val, q->val);
		struct ListNode *new = (struct ListNode *)malloc(sizeof(struct ListNode));
		new->val = val;
		new->next = q;
		p->next = new;
		p = q;
		q = q->next;
	}
	return head;
}
