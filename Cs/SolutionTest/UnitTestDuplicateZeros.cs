using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestDuplicateZeros
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input = { 1, 0, 2, 3, 0, 4, 5, 0 };
			int[] expect = { 1, 0, 0, 2, 3, 0, 0, 4 };
			Solution.Solution sln = new();
			sln.DuplicateZeros(input);
			CollectionAssert.AreEqual(expect, input);
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input = { 1, 2, 3 };
			int[] expect = { 1, 2, 3 };
			Solution.Solution sln = new();
			sln.DuplicateZeros(input);
			CollectionAssert.AreEqual(expect, input);
		}
	}
}
