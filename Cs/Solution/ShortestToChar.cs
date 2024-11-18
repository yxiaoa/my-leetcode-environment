using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public int[] ShortestToChar(string s, char c)
		{
			int n = s.Length;
			int[] ret = new int[n];
			List<int> pos = new() { -n };
			for (int i = 0; i < n; i++)
			{
				if (s[i] == c)
				{
					pos.Add(i);
				}
			}
			pos.Add(2 * n);
			int j = 1;
			for (int i = 0; i < n; i++)
			{
				ret[i] = System.Math.Min(i - pos[j - 1], pos[j] - i);
				if (i == pos[j])
				{
					j++;
				}
			}
			return ret;
		}
	}
}
