using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMinOperations
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 3, 9, 7 };
			int input1 = 5;
			int expect = 4;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MinOperations(input0, input1));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 4, 1, 3 };
			int input1 = 4;
			int expect = 0;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MinOperations(input0, input1));
		}
		[TestMethod]
		public void TestExample3()
		{
			int[] input0 = { 2, 3 };
			int input1 = 6;
			int expect = 5;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MinOperations(input0, input1));
		}

	}
}
