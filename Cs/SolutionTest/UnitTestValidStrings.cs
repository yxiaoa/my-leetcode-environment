using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestValidStrings
	{
		[TestMethod]
		public void TestExample1()
		{
			int input0 = 3;
			IList<string> expect = new List<string>() { "010", "011", "101", "110", "111" };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual((System.Collections.ICollection)expect, (System.Collections.ICollection)sln.ValidStrings(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int input0 = 1;
			IList<string> expect = new List<string>() { "0", "1" };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual((System.Collections.ICollection)expect, (System.Collections.ICollection)sln.ValidStrings(input0));
		}
	}
}
