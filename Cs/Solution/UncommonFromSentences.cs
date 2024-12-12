using System;
using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public string[] UncommonFromSentences(string s1, string s2)
		{
			string[] words1 = s1.Split(' ');
			string[] words2 = s2.Split(' ');
			Dictionary<string, int> freq = new();
			foreach (string word in words1)
			{
				freq[word] = freq.GetValueOrDefault(word, 0) + 1;
			}
			foreach (string word in words2)
			{
				freq[word] = freq.GetValueOrDefault(word, 0) + 1;
			}
			List<string> ret = new();
			foreach (KeyValuePair<string, int> kvp in freq)
			{
				if (kvp.Value == 1)
				{
					ret.Add(kvp.Key);
				}
			}
			return ret.ToArray();
		}
	}
}

