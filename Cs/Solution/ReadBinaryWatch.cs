using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public IList<string> ReadBinaryWatch(int turnedOn)
		{
			var result = new List<string>();

			for (int h = 0; h < 12; h++)
			{
				for (int m = 0; m < 60; m++)
				{
					if ((CountBits(h) + CountBits(m)) == turnedOn)
					{
						result.Add($"{h}:{m:D2}");
					}
				}
			}
			return result;
		}
		private static int CountBits(int n)
		{
			int count = 0;
			while (n > 0)
			{
				count += n & 1;
				n >>= 1;
			}
			return count;
		}
	}
}
