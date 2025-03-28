class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
  List toArray(ListNode head) {
    List list = [];
    ListNode? current = head;
    while (current != null) {
      list.add(current.val);
      current = current.next;
    }
    return list;
  }
  ListNode fromArray(List list) {
    ListNode? head;
    ListNode? current;
    for (int i = 0; i < list.length; i++) {
      if (head == null) {
	head = ListNode(list[i]);
	current = head;
      } else {
	current!.next = ListNode(list[i]);
	current = current.next;
      }
    }
    return head!;
  }
}
