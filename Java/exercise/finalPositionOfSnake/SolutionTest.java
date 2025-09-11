package exercise.finalPositionOfSnake;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import java.util.Arrays;

public class SolutionTest {
	@Test
	public void testfinalPositionOfSnake() {
		int[] input0 = { 2, 3 };
		String[][] input1 = { { "RIGHT", "DOWN" }, { "DOWN", "RIGHT", "UP" } };
		int[] expect = { 3, 1 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.finalPositionOfSnake(input0[i], Arrays.asList(input1[i])));
		}
	}
}
