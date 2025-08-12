using System;

namespace Solution
{
	public partial class Solution
	{
		public int FindPermutationDifference(string s, string t)
		{
			int[] cnt = new int[26];
			for (int i = 0; i < s.Length; i++)
			{
				cnt[s[i] - 'a'] = i;
			}
			int ans = 0;
			for (int i = 0; i < t.Length; i++)
			{
				ans += Math.Abs(cnt[t[i] - 'a'] - i);
			}
			return ans;
		}
	}
}
