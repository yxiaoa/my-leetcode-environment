using System;

namespace Solution
{
	public partial class Solution
	{
		public string ReversePrefix(string s, int k)
		{
			char[] arr = s.ToCharArray();
			Array.Reverse(arr, 0, k);
			return new string(arr);
		}
	}
}
