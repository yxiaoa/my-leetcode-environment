using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestReadBinaryWatch
	{
		[TestMethod]
		public void TestExample1()
		{
			int input0 = 1;
			IList<string> expect = new List<string> { "0:01", "0:02", "0:04", "0:08", "0:16", "0:32", "1:00", "2:00", "4:00", "8:00" };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual((System.Collections.ICollection)expect, (System.Collections.ICollection)sln.ReadBinaryWatch(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			int input0 = 9;
			IList<string> expect = new List<string> { };
			Solution.Solution sln = new();
			CollectionAssert.AreEqual((System.Collections.ICollection)expect, (System.Collections.ICollection)sln.ReadBinaryWatch(input0));
		}
	}
}
