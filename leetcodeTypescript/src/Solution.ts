export class ListNode {
	val: number
	next: ListNode | null
	constructor(val?: number, next?: ListNode | null) {
		this.val = (val ?? 0)
		this.next = (next ?? null)
	}
	static array_to_list(num: number[]): ListNode {
		let i = num.length - 1;
		let head = new ListNode(num[i]);
		while (i >= 0) {
			let new_head = new ListNode(num[i], head);
			head = new_head;
			i--;
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

export class TreeNode {
	val: number
	left: TreeNode | null
	right: TreeNode | null
	constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
		this.val = (val ?? 0)
		this.left = (left ?? null)
		this.right = (right ?? null)
	}
}

export function insertGreatestCommonDivisors(head: ListNode | null): ListNode | null {
	return head;
};

export function countTestedDevices(batteryPercentages: number[]): number {
	return batteryPercentages.reduce((cnt, b) => b > cnt ? cnt + 1 : cnt, 0);
};
