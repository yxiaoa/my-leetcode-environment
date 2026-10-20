package exercise.mapWordWeights;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		String[] input0 = { "abcd", "def", "xyz" };
		int[] input1 = { 5, 3, 12, 14, 1, 2, 3, 2, 10, 6, 6, 9, 7, 8, 7, 10, 8, 9, 6, 9, 9, 8, 3, 7, 7, 2 };
		String expect = "rij";
		Solution sln = new Solution();
		assertEquals(expect, sln.mapWordWeights(input0, input1));
	}

	@Test
	public void test_example_2() {
		String[] input0 = { "a", "b", "c" };
		int[] input1 = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };
		String expect = "yyy";
		Solution sln = new Solution();
		assertEquals(expect, sln.mapWordWeights(input0, input1));
	}

	@Test
	public void test_example_3() {
		String[] input0 = { "abcd" };
		int[] input1 = { 7, 5, 3, 4, 3, 5, 4, 9, 4, 2, 2, 7, 10, 2, 5, 10, 6, 1, 2, 2, 4, 1, 3, 4, 4, 5 };
		String expect = "g";
		Solution sln = new Solution();
		assertEquals(expect, sln.mapWordWeights(input0, input1));
	}
}
