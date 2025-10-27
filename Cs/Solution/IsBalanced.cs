
namespace Solution
{
	public partial class Solution
	{
		public bool IsBalanced(string num)
		{
			int leftSum = 0;
			int rightSum = 0;
			int n = num.Length;
			for (int i = 0; i < n; i += 2)
			{
				leftSum += num[i] - '0';
			}
			for (int i = 1; i < n; i += 2)
			{
				rightSum += num[i] - '0';
			}
			return leftSum == rightSum;
		}
	}
}
