
namespace Solution
{
	public partial class Solution
	{
		public int MinimumOperations(int[] nums)
		{
			int count = 0;
			foreach (var num in nums)
			{
				count += ((num % 3) > 0) ? 1 : 0;
			}
			return count;
		}
	}
}
