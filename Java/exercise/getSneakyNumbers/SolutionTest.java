package exercise.getSneakyNumbers;

import static org.junit.jupiter.api.Assertions.*;

import java.lang.reflect.Array;
import java.util.Arrays;

import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[] input = { 0, 1, 1, 0 };
		int[] expect = { 0, 1 };
		Solution sln = new Solution();
		int[] output = sln.getSneakyNumbers(input);
		Arrays.sort(output);
		assertArrayEquals(expect, output);
	}

	@Test
	public void test_example_2() {
		int[] input = { 7, 1, 5, 4, 3, 4, 6, 0, 9, 5, 8, 2 };
		int[] expect = { 4, 5 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.getSneakyNumbers(input));
	}
}
