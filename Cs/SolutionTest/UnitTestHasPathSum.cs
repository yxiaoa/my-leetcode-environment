using Microsoft.VisualStudio.TestTools.UnitTesting;
using Solution;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestHasPathSum
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 5, 4, 8, 11, int.MinValue, 13, 4, 7, 2, int.MinValue, int.MinValue, int.MinValue, 1 };
			int input1 = 22;
			bool expected = true;

			TreeNode root = new(input0);
			Solution.Solution sln = new();
			Assert.AreEqual(expected, sln.HasPathSum(root, input1));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 1,2,3 };
			int input1 = 5;
			bool expected = false;

			TreeNode root = new(input0);
			Solution.Solution sln = new();
			Assert.AreEqual(expected, sln.HasPathSum(root, input1));
		}
		[TestMethod]
		public void TestExample3()
		{
			int[] input0 = { };
			int input1 = 0;
			bool expected = false;

			TreeNode root = null;
			Solution.Solution sln = new();
			Assert.AreEqual(expected, sln.HasPathSum(root, input1));
		}
	}
}
