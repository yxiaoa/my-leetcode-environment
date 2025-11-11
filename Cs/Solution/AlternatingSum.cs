using System;

namespace Solution
{
	public partial class Solution
	{
		public int AlternatingSum(int[] nums)
		{
			int sum = 0;
			for (int i = 0; i < nums.Length; i += 2)
			{
				sum += nums[i];
			}
			for (int i = 1; i < nums.Length; i += 2)
			{
				sum -= nums[i];
			}
			return sum;
		}
	}
}
