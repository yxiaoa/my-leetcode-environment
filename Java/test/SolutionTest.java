package test;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;
import java.util.Arrays;
import java.util.List;

import org.junit.Test;

import exercise.Solution;

public class SolutionTest {
	@Test
	public void testDestCity() {
		String[][][] input0 = { { { "London", "New York" }, { "New York", "Lima" }, { "Lima", "Sao Paulo" } },
				{ { "B", "C" }, { "D", "B" }, { "C", "A" } }, { { "A", "Z" } } };
		String[] expect = { "Sao Paulo", "A", "Z" };
		Solution sln = new Solution();

		for (int i = 0; i < input0.length; i++) {
			List<List<String>> paths = new java.util.ArrayList<>();
			for (String[] path : input0[i]) {
				paths.add(Arrays.asList(path));
			}
			assertEquals(expect[i], sln.destCity(paths));
		}
	}

	@Test
	public void testCountPointsExample1() {
		int[][] input0 = { { 1, 3 }, { 3, 3 }, { 5, 3 }, { 2, 2 } };
		int[][] input1 = { { 2, 3, 1 }, { 4, 3, 1 }, { 1, 1, 2 } };
		int[] expect = { 3, 2, 2 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.countPoints(input0, input1));
	}

	@Test
	public void testCountPointsExample2() {
		int[][] input0 = { { 1, 1 }, { 2, 2 }, { 3, 3 }, { 4, 4 }, { 5, 5 } };
		int[][] input1 = { { 1, 2, 2 }, { 2, 2, 2 }, { 4, 3, 2 }, { 4, 3, 3 } };
		int[] expect = { 2, 3, 2, 4 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.countPoints(input0, input1));
	}

	@Test
	public void test_shortestToChar() {
		String[] input0 = { "loveleetcode", "aaab", "aaba" };
		char[] input1 = { 'e', 'b', 'b' };
		int[][] expect = { { 3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0 }, { 3, 2, 1, 0 }, { 2, 1, 0, 1 } };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertArrayEquals(expect[i], sln.shortestToChar(input0[i], input1[i]));
		}
	}

	@Test
	public void test_removeTrailingZeros() {
		String[] input0 = { "51230100", "123" };
		String[] expect = { "512301", "123" };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.removeTrailingZeros(input0[i]));
		}
	}

	@Test
	public void test_findIntersectionValues() {
		int[][] input0 = { { 2, 3, 2 }, { 4, 3, 2, 3, 1 }, { 3, 4, 2, 3 } };
		int[][] input1 = { { 1, 2 }, { 2, 2, 5, 2, 3, 6 }, { 1, 5 } };
		int[][] expect = { { 2, 1 }, { 3, 4 }, { 0, 0 } };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertArrayEquals(expect[i], sln.findIntersectionValues(input0[i], input1[i]));
		}
	}

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
