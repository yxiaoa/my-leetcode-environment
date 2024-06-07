using Microsoft.VisualStudio.TestTools.UnitTesting;
using Leetcode;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestSolution
	{
		[TestMethod]
		public void TestCountTestedDevices()
		{
			int[][] input0 = { new int[] { 1, 1, 2, 1, 3 }, new int[] { 0, 1, 2 } };
			int[] expect = { 3, 2 };
			Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				Assert.AreEqual(expect[i], sln.CountTestedDevices(input0[i]));
			}
		}
		[TestMethod]
		public void TestMakeSmallestPalindrome()
		{
			string[] input0 = { "egcfe", "abcd", "seven" };
			string[] expect = { "efcfe", "abba", "neven" };
			Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				Assert.AreEqual(expect[i], sln.MakeSmallestPalindrome(input0[i]));
			}
		}
	}
}
