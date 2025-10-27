using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestIsBalanced
	{
		[TestMethod]
		public void TestExample1()
		{
			string input0 = "1234";
			bool expect = false;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.IsBalanced(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			string input0 = "24123";
			bool expect = true;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.IsBalanced(input0));
		}
	}
}
