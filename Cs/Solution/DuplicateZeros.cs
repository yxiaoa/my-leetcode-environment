using System.Collections.Generic;

namespace Solution
{
	public partial class Solution
	{
		public void DuplicateZeros(int[] arr)
		{
			int[] copy = new int[arr.Length];
			int i = 0;
			int j = 0;
			while (j < arr.Length)
			{
				copy[j++] = arr[i];
				if (arr[i++] == 0 && j < arr.Length)
				{
					copy[j++] = 0;
				}
			}
			for (i = 0; i < arr.Length; i++)
			{
				arr[i] = copy[i];
			}
		}
	}
}
