using Microsoft.VisualStudio.TestTools.UnitTesting;
using Solution;

namespace SolutionTest
{
	[TestClass]
	public class UnitTest1
	{
		[TestMethod]
		public void TestMethod1()
		{
			string[] input0 = {"egcfe", "abcd", "seven"};
			string[] expect = {"efcfe", "abba", "neven"};
			LeetcodeSolution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				Assert.AreEqual(expect[i], sln.MakeSmallestPalindrome(input0[i]));
			}
		}
	}
}
