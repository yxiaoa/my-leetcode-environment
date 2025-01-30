using Microsoft.VisualStudio.TestTools.UnitTesting;
using Solution;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestInsertGreatestCommonDivisors
	{
		[TestMethod]
		public void TestExample1()
		{
			int[] input = { 18, 6, 10, 3 };
			int[] expect = { 18, 6, 6, 2, 10, 1, 3 };
			ListNode output;

			Solution.Solution sln = new();

			output = sln.InsertGreatestCommonDivisors(ListNode.ArrayToList(input));
			Assert.IsTrue(output.AreEqual(ListNode.ArrayToList(expect)));
		}
		[TestMethod]
		public void TestExample2()
		{
			int[] input = { 7 };
			int[] expect = { 7 };
			ListNode output;

			Solution.Solution sln = new();

			output = sln.InsertGreatestCommonDivisors(ListNode.ArrayToList(input));
			Assert.IsTrue(output.AreEqual(ListNode.ArrayToList(expect)));
		}
	}
}
