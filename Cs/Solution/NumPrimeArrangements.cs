namespace Solution
{
	public partial class Solution
	{
		public int NumPrimeArrangements(int n)
		{
			int m = CountPrimes(n);
			return (int)(Factor(m) * Factor(n - m) % mod);
		}
		private readonly int mod = 1000000007;
		private static bool IsPrime(int n)
		{
			for (int i = 2; i * i <= n; i++)
			{
				if (0 == n % i)
				{
					return false;
				}
			}
			return true;
		}
		private static int CountPrimes(int n)
		{
			int cnt = 0;
			for (int i = 2; i <= n; i++)
			{
				cnt += IsPrime(i) ? 1 : 0;
			}
			return cnt;
		}
		private long Factor(int n)
		{
			long f = 1;
			for (int i = 2; i <= n; i++)
			{
				f = f * i % mod;
			}
			return f;
		}
	}
}
