namespace Solution
{
	public partial class Solution
	{
		public int ReverseDegree(string s)
		{
			int ret = 0;
			for (int i = 0; i < s.Length; i++)
			{
				ret += (26 + 'a' - s[i]) * (i + 1);
			}
			return ret;
		}
	}
}
