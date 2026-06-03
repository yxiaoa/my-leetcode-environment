using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestMirrorDistance
	{
		[TestMethod]
		public void TestExample1()
		{
			int input0 = 25;
			int expect = 27;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MirrorDistance(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int input0 = 10;
			int expect = 9;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MirrorDistance(input0));
		}
		[TestMethod]
		public void TestExample3()
		{
			int input0 = 7;
			int expect = 0;
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.MirrorDistance(input0));
		}
	}
}
