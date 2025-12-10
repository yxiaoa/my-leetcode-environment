using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestRecoverOrder
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 3, 1, 2, 5, 4 };
			int[] input1 = { 1, 3, 4 };
			int[] expect = { 3, 1, 4 };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual(expect, sln.RecoverOrder(input0, input1));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 1, 4, 5, 3, 2 };
			int[] input1 = { 2, 5 };
			int[] expect = { 5, 2 };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual(expect, sln.RecoverOrder(input0, input1));
		}
	}
}
