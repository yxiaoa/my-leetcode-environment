
using System.Collections.Generic;

namespace Solution
{

	public class MyQueue
	{

		private Stack<int> stack1;
		private Stack<int> stack2;

		public MyQueue()
		{
			stack1 = new Stack<int>();
			stack2 = new Stack<int>();
		}

		public void Push(int x)
		{
			stack1.Push(x);
		}

		public int Pop()
		{
			TransferStack1ToStack2();
			return stack2.Pop();
		}

		public int Peek()
		{
			TransferStack1ToStack2();
			return stack2.Peek();
		}

		public bool Empty()
		{
			return (stack1.Count == 0) && (stack2.Count == 0);
		}

		private void TransferStack1ToStack2()
		{
			if (stack2.Count == 0)
			{
				while (stack1.Count > 0)
				{
					stack2.Push(stack1.Pop());
				}
			}
		}
	}
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = new MyQueue();
 * obj.Push(x);
 * int param_2 = obj.Pop();
 * int param_3 = obj.Peek();
 * bool param_4 = obj.Empty();
 */
