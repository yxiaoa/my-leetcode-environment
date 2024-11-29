using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestFindIntersectionValues
	{
		[TestMethod]
		public void TestFindIntersectionValues()
		{
			int[][] input0 = { new int[] { 2, 3, 2 }, new int[] { 4, 3, 2, 3, 1 }, new int[] { 3, 4, 2, 3 } };
			int[][] input1 = { new int[] { 1, 2 }, new int[] { 2, 2, 5, 2, 3, 6 }, new int[] { 1, 5 } };
			int[][] expect = { new int[] { 2, 1 }, new int[] { 3, 4 }, new int[] { 0, 0 } };
			Solution.Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				int[] output = sln.FindIntersectionValues(input0[i], input1[i]);
				Assert.AreEqual(expect[i].Length, output.Length);
				for (int j = 0; j < output.Length; j++)
				{
					Assert.AreEqual(expect[i][j], output[j]);
				}
			}
		}
	}
}
