namespace Solution
{
	public partial class Solution
	{
		public int[] GetSneakyNumbers(int[] nums)
		{
			int[] count = new int[nums.Length];
			int[] ret = new int[2];
			int ret_count = 0;
			for (int i = 0; i < nums.Length; i++)
			{
				if (count[nums[i]] == 1)
				{
					ret[ret_count++] = nums[i];
				}
				count[nums[i]]++;
			}
			return ret;
		}
	}
}
