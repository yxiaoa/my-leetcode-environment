
using System.Collections.Generic;

namespace Solution
{

	public partial class Solution
	{
		public IList<string> SummaryRanges(int[] nums)
		{
			var result = new List<string>();
			if (nums.Length == 0)
			{
				return result;
			}

			int start = nums[0];
			int end = start;
			for (int i = 1; i < nums.Length; i++)
			{
				if (nums[i] == end + 1)
				{
					end++;
					continue;
				}
				string range = (start == end) ? start.ToString() : $"{start}->{end}";
				result.Add(range);
				start = nums[i];
				end = start;
			}
			string lastRange = (start == end) ? start.ToString() : $"{start}->{end}";
			result.Add(lastRange);
			return result;
		}
	}
}
