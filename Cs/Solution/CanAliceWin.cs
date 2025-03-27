namespace Solution
{
	public partial class Solution
	{
		public bool CanAliceWin(int[] nums)
		{
			int digit_1_sum = 0;
			int sum = 0;
			foreach (int n in nums)
			{
				if (n < 10)
				{
					digit_1_sum += n;
				}
				sum += n;
			}
			return sum != (digit_1_sum + digit_1_sum);
		}
	}
}
