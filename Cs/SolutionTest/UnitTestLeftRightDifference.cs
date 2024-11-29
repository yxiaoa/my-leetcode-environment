using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Diagnostics;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestLeftRightDifference
	{
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
