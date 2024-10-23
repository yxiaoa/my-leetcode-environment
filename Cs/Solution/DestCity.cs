using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public string DestCity(IList<IList<string>> paths)
		{
			HashSet<string> set = new();
			foreach (IList<string> path in paths)
			{
				set.Add(path[0]);
			}
			foreach (IList<string> path in paths)
			{
				if (!set.Contains(path[1]))
				{
					return path[1];
				}
			}
			return "";
		}
	}
}
