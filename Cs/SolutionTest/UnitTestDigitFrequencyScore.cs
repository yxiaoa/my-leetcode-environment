using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestDigitFrequencyScore
	{
		[TestMethod]
		public void TestExample1()
		{
			int input0 = 122;
			int expect = 5;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.DigitFrequencyScore(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int input0 = 101;
			int expect = 2;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.DigitFrequencyScore(input0));
		}
	}
}
