using System;

namespace Solution
{
	public partial class Solution
	{
		public int MaxFreqSum(string s)
		{
			int[] freq = new int[26];
			int max_vowel = 0;
			int max_cons = 0;
			foreach (char c in s)
			{
				int i = c - 'a';
				freq[i]++;
				if ((c == 'a') || (c == 'e') || (c == 'i') || (c == 'o') || (c == 'u'))
				{
					max_vowel = Math.Max(max_vowel, freq[i]);
				}
				else
				{
					max_cons = Math.Max(max_cons, freq[i]);
				}
			}
			return max_vowel + max_cons;
		}
	}
}
