using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestSubarraySum
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input = { 2, 3, 1 };
			int expect = 11;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.SubarraySum(input));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input = { 3, 1, 1, 2 };
			int expect = 13;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.SubarraySum(input));
		}
	}
}
