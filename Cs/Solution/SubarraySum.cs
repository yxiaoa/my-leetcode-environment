using System;
using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public int SubarraySum(int[] nums) {
			int n = nums.Length;
			int[] prefixSum = new int[n + 1];
			for (int i = 0; i < n; i++)
			{
				prefixSum[i + 1] = prefixSum[i] + nums[i];
			}
			int totalSum = 0;
			for (int i = 0; i < n; i++)
			{
				int start = Math.Max(0, i - nums[i]);
				int subarraySum = prefixSum[i + 1] - prefixSum[start];
				totalSum += subarraySum;
			}
			return totalSum;
		}
	}
}
