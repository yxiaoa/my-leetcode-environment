
using System;

namespace Solution
{
	public partial class Solution
	{
		public int MirrorDistance(int n)
		{
			return Math.Abs(n - Reverse(n));
		}

		private static int Reverse(int n)
		{
			int result = 0;
			while (n > 0)
			{
				result = result * 10 + n % 10;
				n /= 10;
			}
			return result;
		}
	}
}
