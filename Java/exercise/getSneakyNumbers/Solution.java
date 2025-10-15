package exercise.getSneakyNumbers;

class Solution {
	public int[] getSneakyNumbers(int[] nums) {
		int[] result = new int[2];
		int index = 0;
		int[] count = new int[nums.length];
		for (int num : nums) {
			count[num]++;
			if (count[num] == 2) {
				result[index++] = num;
				if (index == 2) {
					break;
				}
			}
		}
		return result;
	}
}
