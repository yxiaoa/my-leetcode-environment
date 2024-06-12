import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class SolutionTest {
	@Test
	public void test_strStr() {
		String[] input0 = { "sadbutsad", "leetcode" };
		String[] input1 = { "sad", "leeto" };
		int[] expect = { 0, -1 };

		Solution sln = new Solution();

		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.strStr(input0[i], input1[i]));
		}
	}

	@Test
	public void test_countTestedDevices() {
		int[][] input0 = { { 1, 1, 2, 1, 3 }, { 0, 1, 2 } };
		int[] expect = { 3, 2 };

		Solution sln = new Solution();

		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.countTestedDevices(input0[i]));
		}
	}

	@Test
	public void test_maximumNumberOfStringPairs() {
		String[][] input0 = { { "cd", "ac", "dc", "ca", "zz" } };
		int[] expect = { 2 };

		Solution sln = new Solution();

		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.maximumNumberOfStringPairs(input0[i]));
		}
	}
}
