
using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public int UniqueMorseRepresentations(string[] words)
		{
			string[] morse = new string[] { ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.." };
			HashSet<string> set = new HashSet<string>();
			foreach (string word in words)
			{
				string str = "";
				foreach (char c in word)
				{
					str += morse[c - 'a'];
				}
				set.Add(str);
			}
			return set.Count;
		}
	}
}
