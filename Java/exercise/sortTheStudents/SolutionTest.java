package exercise.sortTheStudents;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[][] input0 = {{10,6,9,1},{7,5,11,2},{4,8,3,15}};
		int input1 = 2;
		int[][] expect = {{7,5,11,2},{10,6,9,1},{4,8,3,15}};
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.sortTheStudents(input0, input1));
	}

	@Test
	public void test_example_2() {
		int[][] input0 = {{3,4},{5,6}};
		int input1 = 0;
		int[][] expect = {{5,6},{3,4}};
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.sortTheStudents(input0, input1));
	}
}
