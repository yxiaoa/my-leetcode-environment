using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMinMoves
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 2, 1, 3 };
			int expect = 3;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MinMoves(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 4, 4, 5 };
			int expect = 2;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MinMoves(input0));
		}
	}
}
