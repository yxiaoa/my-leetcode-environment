
using System;
using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public IList<string> ValidStrings(int n)
		{
			List<string> result = new();
			char[] current = new char[n];

			void Dfs(int index, bool previousWasZero)
			{
				if (index == n)
				{
					result.Add(new string(current));
					return;
				}

				if (!previousWasZero)
				{
					current[index] = '0';
					Dfs(index + 1, true);
				}

				current[index] = '1';
				Dfs(index + 1, false);
			}

			Dfs(0, false);
			return result;
		}
	}
}
