using System;

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
	}
}
