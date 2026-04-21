using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMyQueue
	{
		[TestMethod]
		public void TestExample1()
		{
			string[] input0 = { "MyQueue", "push", "push", "peek", "pop", "empty" };
			int[] input1 = { 0, 1, 2, 0, 0, 0 };
			int[] expect = { 0, 0, 0, 1, 1, 0 };
			Solution.MyQueue sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				switch (input0[i])
				{
					case "MyQueue":
						sln = new Solution.MyQueue();
						break;
					case "push":
						sln.Push(input1[i]);
						break;
					case "pop":
						Assert.AreEqual(expect[i], sln.Pop());
						break;
					case "peek":
						Assert.AreEqual(expect[i], sln.Peek());
						break;
					case "empty":
						Assert.AreEqual(expect[i] == 1, sln.Empty());
						break;
				}
			}
		}
	}
}
