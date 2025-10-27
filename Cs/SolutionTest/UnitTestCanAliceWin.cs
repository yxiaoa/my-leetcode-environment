using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestCanAliceWin
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input0 = { 1, 2, 3, 4, 10 };
			bool expect = false;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.CanAliceWin(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input0 = { 1, 2, 3, 4, 5, 14 };
			bool expect = true;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.CanAliceWin(input0));
		}
		[TestMethod]
		public void TestExample3()
		{
			int[] input0 = { 5, 5, 5, 25 };
			bool expect = true;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.CanAliceWin(input0));
		}
	}
}
