using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public int FinalPositionOfSnake(int n, IList<string> commands)
		{
			int pos = 0;
			foreach (var command in commands)
			{
				if (command == "LEFT")
				{
					pos--;
				}
				else if (command == "RIGHT")
				{
					pos++;
				}
				else if (command == "UP")
				{
					pos -= n;
				}
				else
				{
					pos += n;
				}
			}
			return pos;
		}
	}
}
