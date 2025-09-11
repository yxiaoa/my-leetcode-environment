package exercise.findErrorNums;

import java.util.*;

public class Solution {
	public int[] findErrorNums(int[] nums) {
		int[] res = new int[2];
		int n = nums.length;
		int sum = 0;
		int sumSet = 0;
		Set<Integer> set = new HashSet<>();
		for (int i = 0; i < n; i++) {
			sum += nums[i];
			if (!set.add(nums[i])) {
				res[0] = nums[i];
			}
		}
		for (int i = 1; i <= n; i++) {
			sumSet += i;
		}
		res[1] = res[0] + sumSet - sum;
		return res;
	}
}
