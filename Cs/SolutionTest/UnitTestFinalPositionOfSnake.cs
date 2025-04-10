using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestFinalPositionOfSnake
	{
		[TestMethod]
		public void TestExample1()
		{
			int n = 2;
			IList<string> commands = new List<string> { "RIGHT", "DOWN" };
			int expect = 3;
			Assert.AreEqual(expect, new Solution.Solution().FinalPositionOfSnake(n, commands));
		}
		[TestMethod]
		public void TestExample2()
		{
			int n = 3;
			IList<string> commands = new List<string> { "DOWN", "RIGHT", "UP" };
			int expect = 1;
			Assert.AreEqual(expect, new Solution.Solution().FinalPositionOfSnake(n, commands));
		}
	}
}
