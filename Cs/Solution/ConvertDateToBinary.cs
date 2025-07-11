using System;

namespace Solution
{
	public partial class Solution
	{
		public string ConvertDateToBinary(string date)
		{
			string[] parts = date.Split('-');

			string binaryDay = Convert.ToString(int.Parse(parts[0]), 2);
			string binaryMonth = Convert.ToString(int.Parse(parts[1]), 2);
			string binaryYear = Convert.ToString(int.Parse(parts[2]), 2);

			return $"{binaryDay}-{binaryMonth}-{binaryYear}";
		}
	}
}
