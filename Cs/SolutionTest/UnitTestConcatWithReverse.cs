using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestConcatWithReverse
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 1, 2, 3 };
			int[] expect = { 1, 2, 3, 3, 2, 1 };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual(expect, sln.ConcatWithReverse(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 1 };
			int[] expect = { 1, 1 };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual(expect, sln.ConcatWithReverse(input0));
		}
	}
}
