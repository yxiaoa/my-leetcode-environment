namespace Solution
{
	public partial class Solution
	{
		public int[] CountPoints(int[][] points, int[][] queries)
		{
			int[] ret = new int[queries.Length];
			for (int i = 0; i < queries.Length; i++)
			{
				int[] query = queries[i];
				int x = query[0];
				int y = query[1];
				int r = query[2];
				int count = 0;
				foreach (int[] point in points)
				{
					int px = point[0];
					int py = point[1];
					if ((px - x) * (px - x) + (py - y) * (py - y) <= r * r)
					{
						count++;
					}

				}
				ret[i] = count;
			}
			return ret;
		}
	}
}
