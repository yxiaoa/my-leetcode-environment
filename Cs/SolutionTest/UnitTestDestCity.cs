using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;

namespace SolutionTest
{
	[TestClass]
	public class UnitTestDestCity
	{
		[TestMethod]
		public void TestExample1()
		{
			IList<IList<string>> input0 = new List<IList<string>>{
				new List<string>{ "London", "New York" },
				new List<string>{ "New York", "Lima" },
				new List<string>{ "Lima", "Sao Paulo" }
			};

			string expect = "Sao Paulo";
			string output;
			Solution.Solution sln = new();

			output = sln.DestCity(input0);
			Assert.AreEqual(expect, output);
		}
		[TestMethod]
		public void TestExample2()
		{
			IList<IList<string>> input0 = new List<IList<string>>{
				new List<string>{"B","C" },
				new List<string>{ "D","B" },
				new List<string>{ "C","A" }
			};

			string expect = "A";
			string output;
			Solution.Solution sln = new();

			output = sln.DestCity(input0);
			Assert.AreEqual(expect, output);
		}
		[TestMethod]
		public void TestExample3()
		{
			IList<IList<string>> input0 = new List<IList<string>>{
				new List<string>{"A","Z"}
			};

			string expect = "Z";
			string output;
			Solution.Solution sln = new();

			output = sln.DestCity(input0);
			Assert.AreEqual(expect, output);
		}
	}
}
