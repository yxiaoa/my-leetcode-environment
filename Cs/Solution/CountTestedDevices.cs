
namespace Solution
{
	public partial class Solution
	{
		public int CountTestedDevices(int[] batteryPercentages)
		{
			int cnt = 0;
			foreach (int b in batteryPercentages)
			{
				if (b > cnt)
				{
					cnt++;
				}
			}
			return cnt;
		}
	}
}
