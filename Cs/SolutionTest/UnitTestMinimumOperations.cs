using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMinimumOperations
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 1, 2, 3, 4 };
			int expect = 3;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MinimumOperations(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 3, 6, 9 };
			int expect = 0;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MinimumOperations(input0));
		}
	}
}
