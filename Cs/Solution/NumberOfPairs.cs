using System.Linq;

namespace Solution
{
	public partial class Solution
	{
		public int NumberOfPairs(int[] nums1, int[] nums2, int k)
		{
			int cnt = 0;
			foreach (int num1 in nums1)
			{
				cnt += nums2.Count(num2 => (num1 % (num2 * k)) == 0);
			}
			return cnt;
		}
	}
}
