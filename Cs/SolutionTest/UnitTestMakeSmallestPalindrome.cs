using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMakeSmallestPalindrome
	{
		[TestMethod]
		public void TestMakeSmallestPalindrome()
		{
			string[] input0 = { "egcfe", "abcd", "seven" };
			string[] expect = { "efcfe", "abba", "neven" };
			Solution.Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				Assert.AreEqual(expect[i], sln.MakeSmallestPalindrome(input0[i]));
			}
		}
	}
}
