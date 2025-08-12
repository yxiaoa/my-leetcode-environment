using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestFindPermutationDifference
	{
		[TestMethod]
		public void TestExample1()
		{
			string input0 = "abc";
			string input1 = "bac";
			int expect = 2;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.FindPermutationDifference(input0, input1));
		}
		[TestMethod]
		public void TestExample2()
		{
			string input0 = "abcde";
			string input1 = "edbac";
			int expect = 12;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.FindPermutationDifference(input0, input1));
		}
	}
}
