using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestShortestToChar
	{
		[TestMethod]
		public void TestExample1()
		{
			string input0 = "loveleetcode";
			char input1 = 'e';
			int[] expect = new int[] { 3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0 };
			int[] output;
			Solution.Solution sln = new();
			output = sln.ShortestToChar(input0, input1);
			CollectionAssert.AreEqual(expect, output);
		}
		[TestMethod]
		public void TestExample2()
		{
			string input0 = "aaab";
			char input1 = 'b';
			int[] expect = new int[] { 3, 2, 1, 0 };
			int[] output;
			Solution.Solution sln = new();
			output = sln.ShortestToChar(input0, input1);
			CollectionAssert.AreEqual(expect, output);
		}
		[TestMethod]
		public void TestExample3()
		{
			string input0 = "abba";
			char input1 = 'b';
			int[] expect = new int[] { 1, 0, 0, 1 };
			int[] output;
			Solution.Solution sln = new();
			output = sln.ShortestToChar(input0, input1);
			CollectionAssert.AreEqual(expect, output);
		}
	}
}
