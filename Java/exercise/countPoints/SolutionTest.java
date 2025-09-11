package exercise.countPoints;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
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
}
