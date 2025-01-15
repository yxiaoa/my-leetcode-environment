
namespace Solution
{
	public partial class Solution
	{
		public int DeleteGreatestValue(int[][] grid)
		{
			foreach (int[] row in grid)
			{
				System.Array.Sort(row);
			}
			int ret = 0;
			for (int j = 0; j < grid[0].Length; j++)
			{
				int max = 0;
				for (int i = 0; i < grid.Length; i++)
				{
					max = System.Math.Max(max, grid[i][j]);
				}
				ret += max;
			}
			return ret;
		}
	}
}
