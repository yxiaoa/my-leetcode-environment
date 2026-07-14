using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public int DigitFrequencyScore(int n)
		{
			var map = new Dictionary<int, int>();
			while (n > 0)
			{
				int digit = n % 10;
				if (!map.ContainsKey(digit))
				{
					map[digit] = 0;
				}
				map[digit]++;
				n /= 10;
			}
			int score = 0;
			foreach (var kvp in map)
			{
				score += kvp.Key * kvp.Value;
			}
			return score;
		}
	}
}
