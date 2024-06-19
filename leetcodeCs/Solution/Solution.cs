using System;
using System.Linq;

namespace Leetcode
{
	public class Solution
	{
		public int CountTestedDevices(int[] batteryPercentages)
		{
			int cnt = 0;
			foreach (int b in batteryPercentages)
			{
				if (b > cnt)
				{
					cnt++;
				}
			}
			return cnt;
		}
		public string MakeSmallestPalindrome(string s)
		{
			char[] chars = s.ToCharArray();
			for (int i = 0, j = s.Length - 1; i < j; i++, j--)
			{
				if (chars[i] > chars[j])
				{
					chars[i] = chars[j];
				}
				else
				{
					chars[j] = chars[i];
				}
			}
			return new string(chars);
		}
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
