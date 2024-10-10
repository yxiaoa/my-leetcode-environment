using System;
using System.Collections.Generic;
using System.Linq;

namespace Solution
{
	public partial class Solution
	{
		public int SurfaceArea(int[][] grid)
		{
			int area = 0;
			int n = grid.Length;
			int[][] dirs = { new int[] { 0, 1 }, new int[] { 0, -1 }, new int[] { 1, 0 }, new int[] { -1, 0 } };
			for (int i = 0; i < n; i++)
			{
				for (int j = 0; j < n; j++)
				{
					if (grid[i][j] > 0)
					{
						area += 2; /* each tower has top and bottom */
						for (int k = 0; k < 4; k++)
						{
							int x = i + dirs[k][0];
							int y = j + dirs[k][1];
							int v = 0;
							if (x >= 0 && x < n && y >= 0 && y < n)
							{
								v = grid[x][y];
							}
							/* if the neighbor is higher, then the area of the neighbor is hidden */
							area += Math.Max(0, grid[i][j] - v);

						}
					}
				}
			}
			return area;
		}
		public int[] FindIntersectionValues(int[] nums1, int[] nums2)
		{
			HashSet<int> set1 = new();
			HashSet<int> set2 = new();
			int cnt1 = 0, cnt2 = 0;
			foreach (int v in nums1)
			{
				set1.Add(v);
			}
			foreach (int v1 in nums2)
			{
				set2.Add(v1);
			}
			foreach (int v2 in nums1)
			{
				cnt1 += set2.Contains(v2) ? 1 : 0;
			}
			foreach (int v3 in nums2)
			{
				cnt2 += set1.Contains(v3) ? 1 : 0;
			}
			return new int[] { cnt1, cnt2 };
		}
		public int NumPrimeArrangements(int n)
		{
			int m = CountPrimes(n);
			return (int)(Factor(m) * Factor(n - m) % mod);
		}
		private readonly int mod = 1000000007;
		private static bool IsPrime(int n)
		{
			for (int i = 2; i * i <= n; i++)
			{
				if (0 == n % i)
				{
					return false;
				}
			}
			return true;
		}
		private static int CountPrimes(int n)
		{
			int cnt = 0;
			for (int i = 2; i <= n; i++)
			{
				cnt += IsPrime(i) ? 1 : 0;
			}
			return cnt;
		}
		private long Factor(int n)
		{
			long f = 1;
			for (int i = 2; i <= n; i++)
			{
				f = f * i % mod;
			}
			return f;
		}
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
