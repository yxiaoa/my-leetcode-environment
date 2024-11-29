using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public int[] FindIntersectionValues(int[] nums1, int[] nums2)
		{
			HashSet<int> set1 = new();
			HashSet<int> set2 = new();
			int cnt1 = 0, cnt2 = 0;
			foreach (int v in nums1)
			{
				set1.Add(v);
			}
			foreach (int v1 in nums2)
			{
				set2.Add(v1);
			}
			foreach (int v2 in nums1)
			{
				cnt1 += set2.Contains(v2) ? 1 : 0;
			}
			foreach (int v3 in nums2)
			{
				cnt2 += set1.Contains(v3) ? 1 : 0;
			}
			return new int[] { cnt1, cnt2 };
		}
	}
}
