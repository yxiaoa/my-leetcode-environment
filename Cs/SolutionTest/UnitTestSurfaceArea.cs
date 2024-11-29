using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestSurfaceArea
	{
		[TestMethod]
		public void TestSurfaceArea()
		{
			int[][][] input0 = { new int[][] { new int[] { 1, 2 }, new int[] { 3, 4 } },
			 new int[][] { new int[]{1,1,1},new int[]{1,0,1},new int[]{1,1,1}} ,
			 new int[][] {new int[]{2,2,2},new int[]{2,1,2},new int[]{2,2,2}}};
			int[] expect = { 34, 32, 46 };
			int output;
			Solution.Solution sln = new();
			for (int i = 0; i < input0.Length; i++)
			{
				output = sln.SurfaceArea(input0[i]);
				Assert.AreEqual(expect[i], output);
			}
		}
	}
}
