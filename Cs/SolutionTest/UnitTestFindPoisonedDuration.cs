using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestFindPoisonedDuration
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 1, 4 };
			int input1 = 2;
			int expect = 4;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.FindPoisonedDuration(input0, input1));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 1, 2 };
			int input1 = 2;
			int expect = 3;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.FindPoisonedDuration(input0, input1));
		}
	}
}
