

using System.Linq;

namespace Solution
{
	public partial class Solution
	{
		public int[] ConcatWithReverse(int[] nums)
		{
			return nums.Concat(nums.Reverse()).ToArray();
		}
	}
}
