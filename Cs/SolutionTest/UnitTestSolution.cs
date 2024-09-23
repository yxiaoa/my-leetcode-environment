using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Diagnostics;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestSolution
	{
		[TestMethod]
		public void TestSurfaceArea()
		{
			int[][][] input0 = { new int[][] { new int[] { 1, 2 }, new int[] { 3, 4 } },
			 new int[][] { new int[]{1,1,1},new int[]{1,0,1},new int[]{1,1,1}} ,
			 new int[][] {new int[]{2,2,2},new int[]{2,1,2},new int[]{2,2,2}}};
			int[] expect = { 34, 32, 46 };
			int output;
			Solution.Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				output = sln.SurfaceArea(input0[i]);
				Assert.AreEqual(expect[i], output);
			}
		}
		[TestMethod]
		public void TestFindIntersectionValues()
		{
			int[][] input0 = { new int[] { 2, 3, 2 }, new int[] { 4, 3, 2, 3, 1 }, new int[] { 3, 4, 2, 3 } };
			int[][] input1 = { new int[] { 1, 2 }, new int[] { 2, 2, 5, 2, 3, 6 }, new int[] { 1, 5 } };
			int[][] expect = { new int[] { 2, 1 }, new int[] { 3, 4 }, new int[] { 0, 0 } };
			Solution.Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				int[] output = sln.FindIntersectionValues(input0[i], input1[i]);
				Assert.AreEqual(expect[i].Length, output.Length);
				for (int j = 0; j < output.Length; j++)
				{
					Assert.AreEqual(expect[i][j], output[j]);
				}
			}
		}
		[TestMethod]
		public void TestNumPrimeArrangements()
		{
			int[] input0 = { 5, 100 };
			int[] expect = { 12, 682289015 };
			Solution.Solution sln = new();

			Stopwatch stopwatch = new();
			stopwatch.Start();
			for (int j = 0; j < 1; j++)
			{
				for (int i = 0; i < input0.Length; i++)
				{
					Assert.AreEqual(expect[i], sln.NumPrimeArrangements(input0[i]));
				}
			}
			stopwatch.Stop();
			Console.WriteLine("Execution time: {0}", stopwatch.Elapsed);
		}
		[TestMethod]
		public void TestGcdOfStrings()
		{
			string[] input0 = { "ABCABC", "ABABAB", "LEET" };
			string[] input1 = { "ABC", "ABAB", "CODE" };
			string[] expect = { "ABC", "AB", "" };
			Solution.Solution sln = new();
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
			Solution.Solution sln = new();
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
			Solution.Solution sln = new();
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
			Solution.Solution sln = new();
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
