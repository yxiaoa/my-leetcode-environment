package exercise.trimMean;

import java.util.*;

public class Solution {
	public double trimMean(int[] arr) {
		int n = arr.length;
		int sum = 0;
		int k = n / 20;
		Arrays.sort(arr);
		for (int i = k; i < n - k; i++) {
			sum += arr[i];
		}
		return (double) sum / (n - 2 * k);
	}
}
