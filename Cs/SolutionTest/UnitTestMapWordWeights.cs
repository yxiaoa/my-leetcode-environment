using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMapWordWeights
	{
		[TestMethod]
		public void TestExample1()
		{
			string[] input0 = { "abcd", "def", "xyz" };
			int[] input1 = { 5, 3, 12, 14, 1, 2, 3, 2, 10, 6, 6, 9, 7, 8, 7, 10, 8, 9, 6, 9, 9, 8, 3, 7, 7, 2 };
			string expect = "rij";
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MapWordWeights(input0, input1));
		}
		[TestMethod]
		public void TestExample2()
		{
			string[] input0 = { "a", "b", "c" };
			int[] input1 = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };
			string expect = "yyy";
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MapWordWeights(input0, input1));
		}
		[TestMethod]
		public void TestExample3()
		{
			string[] input0 = { "abcd" };
			int[] input1 = { 7, 5, 3, 4, 3, 5, 4, 9, 4, 2, 2, 7, 10, 2, 5, 10, 6, 1, 2, 2, 4, 1, 3, 4, 4, 5 };
			string expect = "g";
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MapWordWeights(input0, input1));
		}
	}
}
