using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestReverseDegree
	{
		[TestMethod]
		public void TestExample1()
		{
			string input0 = "abc";
			int expect = 148;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.ReverseDegree(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			string input0 = "zaza";
			int expect = 160;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.ReverseDegree(input0));
		}
	}
}
