using System;
using System.Linq;

namespace Solution
{
	public partial class Solution
	{
		public int[] LeftRightDifference(int[] nums)
		{
			int left = 0;
			int right = nums.Sum();
			int[] ret = new int[nums.Length];
			for (int i = 0; i < nums.Length; i++)
			{
				right -= nums[i];
				ret[i] = Math.Abs(right - left);
				left += nums[i];
			}
			return ret;
		}
	}
}
