using System;
using System.Linq;

namespace Solution
{
	public class LeetcodeSolution
	{
		public string MakeSmallestPalindrome(string s) {
			char[] chars = s.ToCharArray();
			for (int i = 0, j = s.Length - 1; i < j; i++, j--)
			{
				if (chars[i] > chars[j]) {
					chars[i] = chars[j];
				} else {
					chars[j] = chars[i];
				}
			}
			return new string(chars);
		}
	}
}
