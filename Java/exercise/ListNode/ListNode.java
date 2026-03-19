package exercise.ListNode;

public class ListNode {
	public int val;
	public ListNode next;

	public ListNode() {
	}

	public ListNode(int val) {
		this.val = val;
	}

	public ListNode(int val, ListNode next) {
		this.val = val;
		this.next = next;
	}

	public static ListNode createList(int[] values) {
		if (values.length == 0) {
			return null;
		}
		ListNode head = new ListNode(values[0]);
		ListNode current = head;
		for (int i = 1; i < values.length; i++) {
			current.next = new ListNode(values[i]);
			current = current.next;
		}
		return head;
	}

	public static int[] toArray(ListNode head) {
		int size = 0;
		ListNode current = head;
		while (current != null) {
			size++;
			current = current.next;
		}
		int[] result = new int[size];
		current = head;
		for (int i = 0; i < size; i++) {
			result[i] = current.val;
			current = current.next;
		}
		return result;
	}
}
