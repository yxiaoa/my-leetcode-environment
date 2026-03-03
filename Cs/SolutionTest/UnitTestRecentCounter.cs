using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestRecentCounter
	{
		[TestMethod]
		public void TestExample1()
		{
			string[] input0 = { "RecentCounter", "ping", "ping", "ping", "ping" };
			int[] input1 = { 0, 1, 100, 3001, 3002 };
			int[] expect = { 0, 1, 2, 3, 3 };
			Solution.RecentCounter sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				if (input0[i] == "RecentCounter")
				{
					sln = new Solution.RecentCounter();
				}
				else if (input0[i] == "ping")
				{
					Assert.AreEqual(expect[i], sln.Ping(input1[i]));
				}
			}
		}
	}
}
