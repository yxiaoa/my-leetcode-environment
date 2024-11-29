using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Diagnostics;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestNumPrimeArrangements
	{
		[TestMethod]
		public void TestNumPrimeArrangements()
		{
			int[] input0 = { 5, 100 };
			int[] expect = { 12, 682289015 };
			Solution.Solution sln = new();

			Stopwatch stopwatch = new();
			stopwatch.Start();
			for (int j = 0; j < 1; j++)
			{
				for (int i = 0; i < input0.Length; i++)
				{
					Assert.AreEqual(expect[i], sln.NumPrimeArrangements(input0[i]));
				}
			}
			stopwatch.Stop();
			Console.WriteLine("Execution time: {0}", stopwatch.Elapsed);
		}
	}
}
