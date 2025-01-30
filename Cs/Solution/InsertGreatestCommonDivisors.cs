namespace Solution
{
	public partial class Solution
	{
		public ListNode InsertGreatestCommonDivisors(ListNode head)
		{
			ListNode cur = head;
			ListNode next = head.next;
			while (next != null)
			{
				int gcd = Gcd(cur.val, next.val);
				cur.next = new ListNode(gcd, next);
				cur = next;
				next = next.next;
			}
			return head;
		}

		private static int Gcd(int a, int b)
		{
			return b == 0 ? a : Gcd(b, a % b);
		}
	}
}

