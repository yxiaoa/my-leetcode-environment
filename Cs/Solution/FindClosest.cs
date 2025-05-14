using System;

namespace Solution
{
	public partial class Solution
	{
		public int FindClosest(int x, int y, int z)
		{
			int diff = Math.Abs(x - z) - Math.Abs(y - z);
			if (diff < 0)
			{
				return 1;
			}
			else if (diff > 0)
			{
				return 2;
			}
			else
			{
				return 0;
			}

		}
	}
}
