
namespace Solution
{
	public partial class Solution
	{
		public int[] MinCosts(int[] cost)
		{
			int n = cost.Length;
			int min = cost[0];
			int[] ret = new int[n];
			ret[0] = min;
			for (int i = 1; i < n; i++)
			{
				min = System.Math.Min(min, cost[i]);
				ret[i] = min;
			}
			return ret;
		}
	}
}
