using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestFindDegrees
	{
		[TestMethod]
		public void TestExample1()
		{
			int[][] input0 = { new int[] { 0, 1, 1 }, new int[] { 1, 0, 1 }, new int[] { 1, 1, 0 } };
			int[] expect = { 2, 2, 2 };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual(expect, sln.FindDegrees(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[][] input0 = { new int[] { 0, 1, 0 }, new int[] { 1, 0, 0 }, new int[] { 0, 0, 0 } };
			int[] expect = { 1, 1, 0 };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual(expect, sln.FindDegrees(input0));
		}
	}
}
