using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestNumberOfPairs
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 1, 3, 4 };
			int[] input1 = { 1, 3, 4 };
			int input2 = 1;
			int expect = 5;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.NumberOfPairs(input0, input1, input2));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 1, 2, 4, 12 };
			int[] input1 = { 2, 4 };
			int input2 = 3;
			int expect = 2;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.NumberOfPairs(input0, input1, input2));
		}
		[TestMethod]
		public void TestNone()
		{
			int[] input0 = { 1, 2, 3, 4 };
			int[] input1 = { 2, 4 };
			int input2 = 3;
			int expect = 0;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.NumberOfPairs(input0, input1, input2));
		}
	}
}
