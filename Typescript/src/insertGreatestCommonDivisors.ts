export class ListNode {
	val: number
	next: ListNode | null
	constructor(val?: number, next?: ListNode | null) {
		this.val = (val ?? 0)
		this.next = (next ?? null)
	}
	static array_to_list(num: number[]): ListNode | null {
		let head: ListNode | null = null;
		for (let i = num.length - 1; i >= 0; i--) {
			head = new ListNode(num[i], head);
		}
		return head;
	}
	static list_to_array(head: ListNode | null): number[] {
		let arr: number[] = [];
		while (head != null) {
			arr.push(head.val);
			head = head.next;
		}
		return arr;
	}
}

class TreeNode {
	val: number
	left: TreeNode | null
	right: TreeNode | null
	constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
		this.val = (val ?? 0)
		this.left = (left ?? null)
		this.right = (right ?? null)
	}
}

function GCD(val1: number, val2: number): number {
	let c = val1 % val2;
	while (c != 0) {
		val1 = val2;
		val2 = c;
		c = val1 % val2;
	}
	return val2;
}

export function insertGreatestCommonDivisors(head: ListNode | null): ListNode | null {
	let cur = head;
	while (cur?.next) {
		let gcd = new ListNode(GCD(cur.val, cur.next.val));
		gcd.next = cur?.next;
		cur.next = gcd;
		cur = gcd.next;
	}
	return head;
};


