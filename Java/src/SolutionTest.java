import static org.junit.Assert.assertEquals;

import java.util.Arrays;

import org.junit.Test;

public class SolutionTest {
	@Test
	public void test_longestPalindrome() {
		String[] input0 = { "abccccdd", "a", "AAAAAA" };
		int[] expect = { 7, 1, 6 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.longestPalindrome(input0[i]));
		}
	}

	@Test
	public void test_findPoisonedDuration() {
		int[][] input0 = { { 1, 4 }, { 1, 2 } };
		int[] input1 = { 2, 2 };
		int[] expect = { 4, 3 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.findPoisonedDuration(input0[i], input1[i]));
		}
	}

	@Test
	public void test_sumIndicesWithKSetBits() {
		Integer[][] input0 = { { 5, 10, 1, 5, 2 }, { 4, 3, 2, 1 } };
		int[] input1 = { 1, 2 };
		int[] expect = { 13, 1 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.sumIndicesWithKSetBits(Arrays.asList(input0[i]), input1[i]));
		}
	}

	@Test
	public void test_minimumOperations() {
		int[][] input0 = { { 1, 2, 3, 4 }, { 3, 6, 9 } };
		int[] expect = { 3, 0 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.minimumOperations(input0[i]));
		}
	}

	@Test
	public void test_minimumChairs() {
		String[] input0 = { "EEEEEEE", "ELELEEL", "ELEELEELLL" };
		int[] expect = { 7, 2, 3 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.minimumChairs(input0[i]));
		}
	}

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
