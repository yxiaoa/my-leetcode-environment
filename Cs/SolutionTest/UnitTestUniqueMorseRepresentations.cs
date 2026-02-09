using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestUniqueMorseRepresentations
	{
		[TestMethod]
		public void TestExample1()
		{
			string[] input0 = { "gin", "zen", "gig", "msg" };
			int expect = 2;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.UniqueMorseRepresentations(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			string[] input0 = { "a" };
			int expect = 1;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.UniqueMorseRepresentations(input0));
		}
	}
}
