using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestSummaryRanges
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 0, 1, 2, 4, 5, 7 };
			IList<string> expect = new List<string> { "0->2", "4->5", "7" };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual((System.Collections.ICollection)expect, (System.Collections.ICollection)sln.SummaryRanges(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 100 };
			IList<string> expect = new List<string> { "100" };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual((System.Collections.ICollection)expect, (System.Collections.ICollection)sln.SummaryRanges(input0));
		}
	}
}
