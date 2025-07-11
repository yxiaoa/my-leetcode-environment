using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestConvertDateToBinary
	{
		[TestMethod]
		public void TestExample1()
		{
			string input0 = "2080-02-29";
			string expect = "100000100000-10-11101";
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.ConvertDateToBinary(input0));
		}
		[TestMethod]
		public void TestExample2()
		{
			string input0 = "1900-01-01";
			string expect = "11101101100-1-1";
			Solution.Solution sln = new();
			Assert.AreEqual(expect, sln.ConvertDateToBinary(input0));
		}
	}
}
