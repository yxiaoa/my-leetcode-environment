using Microsoft.VisualStudio.TestTools.UnitTesting;
using Leetcode;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestSolution
	{
		[TestMethod]
		public void TestNumPrimeArrangements()
		{
			int[] input0 = { 5, 100 };
			int[] expect = { 12, 682289015 };
			Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				Assert.AreEqual(expect[i], sln.NumPrimeArrangements(input0[i]));
				//TODO check time cost
			}
		}
		[TestMethod]
		public void TestGcdOfStrings()
		{
			string[] input0 = { "ABCABC", "ABABAB", "LEET" };
			string[] input1 = { "ABC", "ABAB", "CODE" };
			string[] expect = { "ABC", "AB", "" };
			Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				Assert.AreEqual(expect[i], sln.GcdOfStrings(input0[i], input1[i]));
			}
		}
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
		[TestMethod]
		public void TestLeftRightDifference()
		{
			int[][] input0 = { new int[] { 10, 4, 8, 3 }, new int[] { 1 } };
			int[][] expect = { new int[] { 15, 1, 11, 22 }, new int[] { 0 } };
			Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				int[] output = sln.LeftRightDifference(input0[i]);
				Assert.AreEqual(expect[i].Length, output.Length);
				for (int j = 0; j < output.Length; j++)
				{
					Assert.AreEqual(expect[i][j], output[j]);
				}
			}
		}
	}
}
