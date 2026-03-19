package exercise.insertGreatestCommonDivisors;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

import exercise.ListNode.ListNode;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[] input = { 18, 6, 10, 3 };
		int[] expect = { 18, 6, 6, 2, 10, 1, 3 };
		Solution sln = new Solution();
		assertArrayEquals(expect, ListNode.toArray(sln.insertGreatestCommonDivisors(ListNode.createList(input))));
	}

	@Test
	public void test_example_2() {
		int[] input = { 7 };
		int[] expect = { 7 };
		Solution sln = new Solution();
		assertArrayEquals(expect, ListNode.toArray(sln.insertGreatestCommonDivisors(ListNode.createList(input))));
	}
}
