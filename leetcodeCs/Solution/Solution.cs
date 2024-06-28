using System;
using System.Linq;

namespace Leetcode
{
	public class Solution
	{
		public string GcdOfStrings(string str1, string str2)
		{
			if ((str1 + str2).Equals(str2 + str1))
			{
				int a = str1.Length;
				int b = str2.Length;
				int c = a % b;
				while (c != 0)
				{
					(a, b) = (b, c);
					c = a % b;
				}
				return str1[..b];
			}
			return "";
		}
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
