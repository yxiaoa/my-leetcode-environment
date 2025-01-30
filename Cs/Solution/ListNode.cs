namespace Solution
{
	public class ListNode
	{
		public int val;
		public ListNode next;
		public ListNode(int val = 0, ListNode next = null)
		{
			this.val = val;
			this.next = next;
		}
		public static ListNode ArrayToList(int[] values)
		{
			ListNode head = new(values[0]);
			ListNode cur = head;
			for (int i = 1; i < values.Length; i++)
			{
				cur.next = new(values[i]);
				cur = cur.next;
			}
			return head;
		}
		public bool AreEqual(ListNode other)
		{
			ListNode cur = this;
			while (cur != null && other != null)
			{
				if (cur.val != other.val)
				{
					return false;
				}
				cur = cur.next;
				other = other.next;
			}
			return cur == null && other == null;
		}
	}
}
