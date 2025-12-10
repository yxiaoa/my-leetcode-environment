using System.Collections.Generic;
using System.Linq;

namespace Solution
{
	public partial class Solution
	{
		public int[] RecoverOrder(int[] order, int[] friends)
		{
			var set = new HashSet<int>(friends);
			return order.Where(num => set.Contains(num)).ToArray();
		}
	}
}
