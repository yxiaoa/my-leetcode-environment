using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestGcdOfStrings
	{
		[TestMethod]
		public void TestGcdOfStrings()
		{
			string[] input0 = { "ABCABC", "ABABAB", "LEET" };
			string[] input1 = { "ABC", "ABAB", "CODE" };
			string[] expect = { "ABC", "AB", "" };
			Solution.Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				Assert.AreEqual(expect[i], sln.GcdOfStrings(input0[i], input1[i]));
			}
		}
	}
}
