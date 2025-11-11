using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestAlternatingSum
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 1, 3, 5, 7 };
			int expect = -4;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.AlternatingSum(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 100 };
			int expect = 100;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.AlternatingSum(input0));
		}
	}
}
