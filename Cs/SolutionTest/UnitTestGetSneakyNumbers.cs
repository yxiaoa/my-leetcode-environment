using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestGetSneakyNumbers
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 0, 1, 1, 0 };
			int[] expect = { 1, 0 };
			Solution.Solution sln = new();
			int[] result = sln.GetSneakyNumbers(input0);
			Array.Sort(expect);
			Array.Sort(result);
			CollectionAssert.AreEqual(expect, result);
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 0, 3, 2, 1, 3, 2 };
			int[] expect = { 2, 3 };
			Solution.Solution sln = new();
			int[] result = sln.GetSneakyNumbers(input0);
			Array.Sort(expect);
			Array.Sort(result);
			CollectionAssert.AreEqual(expect, result);
		}
		[TestMethod]
		public void TestExample3()
		{
			int[] input0 = { 7, 1, 5, 4, 3, 4, 6, 0, 9, 5, 8, 2 };
			int[] expect = { 4, 5 };
			Solution.Solution sln = new();
			int[] result = sln.GetSneakyNumbers(input0);
			Array.Sort(expect);
			Array.Sort(result);
			CollectionAssert.AreEqual(expect, result);
		}
	}
}
