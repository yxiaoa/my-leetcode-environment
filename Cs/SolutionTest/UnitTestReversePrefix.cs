using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestReversePrefix
	{
		[TestMethod]
		public void TestExample1()
		{
			string input0 = "abcd";
			int input1 = 2;
			string expect = "bacd";
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.ReversePrefix(input0, input1));
		}
		[TestMethod]
		public void TestExample2()
		{
			string input0 = "xyz";
			int input1 = 3;
			string expect = "zyx";
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.ReversePrefix(input0, input1));
		}
		[TestMethod]
		public void TestExample3()
		{
			string input0 = "hey";
			int input1 = 1;
			string expect = "hey";
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.ReversePrefix(input0, input1));
		}
	}
}
