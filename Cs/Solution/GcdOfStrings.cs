
namespace Solution
{
	public partial class Solution
	{
		public string GcdOfStrings(string str1, string str2)
		{
			if ((str1 + str2).Equals(str2 + str1))
			{
				int a = str1.Length;
				int b = str2.Length;
				int c = a % b;
				while (c != 0)
				{
					(a, b) = (b, c);
					c = a % b;
				}
				return str1[..b];
			}
			return "";
		}
	}
}
