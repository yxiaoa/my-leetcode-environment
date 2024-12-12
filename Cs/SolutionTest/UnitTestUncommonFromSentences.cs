using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SolutionTest
{
	[TestClass]
	public class UncommonFromSentencesTest
	{
		[TestMethod]
		public void TestExample1()
		{
			string input0 = "this apple is sweet";
			string input1 = "this apple is sour";
			string[] expect = new string[] { "sweet", "sour" };
			string[] output;
			Solution.Solution sln = new();
			output = sln.UncommonFromSentences(input0, input1);
			CollectionAssert.AreEqual(expect, output);
		}
		[TestMethod]
		public void TestExample2()
		{
			string input0 = "apple apple";
			string input1 = "banana";
			string[] expect = new string[] { "banana" };
			string[] output;
			Solution.Solution sln = new();
			output = sln.UncommonFromSentences(input0, input1);
			CollectionAssert.AreEqual(expect, output);
		}
	}
}
