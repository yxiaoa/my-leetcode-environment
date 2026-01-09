
using System;

namespace Solution
{

	public partial class Solution
	{
		public int FindPoisonedDuration(int[] timeSeries, int duration)
		{
			int total = duration;
			for (int i = 1; i < timeSeries.Length; i++)
			{
				total += Math.Min(duration, timeSeries[i] - timeSeries[i - 1]);
			}
			return total;
		}
	}
}
