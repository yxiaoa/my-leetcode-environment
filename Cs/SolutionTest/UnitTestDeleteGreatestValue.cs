using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestDeleteGreatestValue
	{
		[TestMethod]
		public void TestExample1()
		{
			int[][] input = { new int[] { 1, 2, 4 }, new int[] { 3, 3, 1 } };
			int expect = 8;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.DeleteGreatestValue(input));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[][] input = { new int[] { 10 } };
			int expect = 10;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.DeleteGreatestValue(input));
		}
	}
}
