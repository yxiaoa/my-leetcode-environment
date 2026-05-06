

using System.Linq;

namespace Solution
{
	public partial class Solution
	{
		public int[] FindDegrees(int[][] matrix)
		{
			int n = matrix.Length;
			int[] degrees = new int[n];
			for (int i = 0; i < n; i++)
			{
				degrees[i] = matrix[i].Sum();
			}
			return degrees;
		}
	}
}
