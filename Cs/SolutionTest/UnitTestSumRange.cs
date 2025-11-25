using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestSumRange
	{
		[TestMethod]
		public void TestExample1()
		{
			string[] input0 = { "NumArray", "sumRange", "sumRange", "sumRange" };
			int[][] input1 = { new int[] { -2, 0, 3, -5, 2, -1 }, new int[] { 0, 2 }, new int[] { 2, 5 }, new int[] { 0, 5 } };
			int[] expect = { 0, 1, -1, -3 };
			Solution.NumArray sln = null;
			for (int i = 0; i < input0.Length; i++)
			{
				string method = input0[i];
				if (method == "NumArray")
				{
					sln = new Solution.NumArray(input1[i]);
				}
				else if (method == "sumRange")
				{
					int left = input1[i][0];
					int right = input1[i][1];
					int result = sln.SumRange(left, right);
					Assert.AreEqual(expect[i], result);
				}
			}
		}
	}
}
