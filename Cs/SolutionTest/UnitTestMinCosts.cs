using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMinCosts
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 5, 3, 4, 1, 3, 2 };
			int[] expect = { 5, 3, 3, 1, 1, 1 };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual(expect, sln.MinCosts(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 1, 2, 4, 6, 7 };
			int[] expect = { 1, 1, 1, 1, 1 };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual(expect, sln.MinCosts(input0));
		}
	}
}
