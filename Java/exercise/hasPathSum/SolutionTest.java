package exercise.hasPathSum;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

import exercise.TreeNode.TreeNode;

public class SolutionTest {
	@Test
	public void test_example_1() {
		Integer[] input0 = { 5,4,8,11,null,13,4,7,2,null,null,null,1 };
		int input1 = 22;
		boolean expect = true;
		Solution sln = new Solution();
		assertEquals(expect, sln.hasPathSum(TreeNode.createTree(input0), input1));
	}

	@Test
	public void test_example_2() {
		Integer[] input0 = { 1,2,3 };
		int input1 = 5;
		boolean expect = false;
		Solution sln = new Solution();
		assertEquals(expect, sln.hasPathSum(TreeNode.createTree(input0), input1));
	}
}
