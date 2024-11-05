using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestCountPoints
	{
		[TestMethod]
		public void TestExample1()
		{
			int[][] input0 = new int[][]{
				new int[]{ 1, 3 },
				new int[]{ 3, 3 },
				new int[]{ 5, 3 },
				new int[]{ 2, 2 }
			};
			int[][] input1 = new int[][]{
				new int[]{ 2, 3, 1 },
				new int[]{ 4, 3, 1 },
				new int[]{ 1, 1, 2 }
			};
			int[] expect = new int[] { 3, 2, 2 };
			int[] output;

			Solution.Solution sln = new();
			output = sln.CountPoints(input0, input1);
			CollectionAssert.AreEqual(expect, output);
		}
		[TestMethod]
		public void TestExample2()
		{
			int[][] input0 = new int[][]{
				new int[]{ 1, 1 },
				new int[]{ 2, 2 },
				new int[]{ 3, 3 },
				new int[]{ 4, 4 },
				new int[]{ 5, 5 }
			};
			int[][] input1 = new int[][]{
				new int[]{ 1, 2, 2 },
				new int[]{ 2, 2, 2 },
				new int[]{ 4, 3, 2 },
				new int[]{ 4, 3, 3 }
			};
			int[] expect = new int[] { 2, 3, 2, 4 };
			int[] output;

			Solution.Solution sln = new();
			output = sln.CountPoints(input0, input1);
			CollectionAssert.AreEqual(expect, output);
		}
	}
}
