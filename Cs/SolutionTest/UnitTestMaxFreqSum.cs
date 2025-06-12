using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMaxFreqSum
	{
		[TestMethod]
		public void TestExample1()
		{
			string input = "successes";
			int expect = 6;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MaxFreqSum(input));
		}
		[TestMethod]
		public void TestExample2()
		{
			string input = "aeiaeia";
			int expect = 3;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MaxFreqSum(input));
		}

	}
}
