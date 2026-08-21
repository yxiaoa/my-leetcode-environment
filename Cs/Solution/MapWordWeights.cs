
namespace Solution
{
	public partial class Solution
	{
		public string MapWordWeights(string[] words, int[] weights)
		{
			var result = new System.Text.StringBuilder();
			foreach (var word in words)
			{
				int sum = 0;
				foreach (var ch in word)
				{
					sum += weights[ch - 'a'];
				}
				result.Append((char)('a' + 25 - (sum % 26)));
			}
			return result.ToString();
		}
	}
}
