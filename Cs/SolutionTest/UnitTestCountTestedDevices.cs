using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestCountTestedDevices
	{
		[TestMethod]
		public void TestCountTestedDevices()
		{
			int[][] input0 = { new int[] { 1, 1, 2, 1, 3 }, new int[] { 0, 1, 2 } };
			int[] expect = { 3, 2 };
			Solution.Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				Assert.AreEqual(expect[i], sln.CountTestedDevices(input0[i]));
			}
		}
	}
}
