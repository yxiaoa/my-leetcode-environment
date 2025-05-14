using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestFindClosest
	{
		[TestMethod]
		public void TestExample1()
		{
			Assert.AreEqual(1, new Solution.Solution().FindClosest(2, 7, 4));
		}
		[TestMethod]
		public void TestExample2()
		{
			Assert.AreEqual(2, new Solution.Solution().FindClosest(2, 5, 6));
		}
		[TestMethod]
		public void TestExample3()
		{
			Assert.AreEqual(0, new Solution.Solution().FindClosest(1, 5, 3));
		}
	}
}
