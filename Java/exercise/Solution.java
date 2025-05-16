package exercise;

import java.util.*;

public class Solution {
	private int gcd(int a, int b) {
		while (b != 0) {
			int t = b;
			b = a % b;
			a = t;
		}
		return a;
	}

	public boolean hasGroupsSizeX(int[] deck) {
		Map<Integer, Integer> map = new HashMap<>();
		for (int n : deck) {
			map.put(n, map.getOrDefault(n, 0) + 1);
		}
		int gcd = 0;
		for (int count : map.values()) {
			gcd = gcd(gcd, count);
			if (gcd == 1) {
				return false;
			}
		}
		return true;
	}

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

	public int finalPositionOfSnake(int n, List<String> commands) {
		int pos = 0;
		for (String command : commands) {
			switch (command) {
				case "UP":
					pos -= n;
					break;
				case "DOWN":
					pos += n;
					break;
				case "LEFT":
					pos--;
					break;
				default:
					pos++;
					break;
			}
		}
		return pos;
	}

	public int numberOfPairs(int[] nums1, int[] nums2, int k) {
		int cnt = 0;
		for (int i = 0; i < nums1.length; i++) {
			for (int j = 0; j < nums2.length; j++) {
				if (nums1[i] % (k * nums2[j]) == 0) {
					cnt++;
				}
			}
		}
		return cnt;
	}

	public int subarraySum(int[] nums) {
		int[] prefix = new int[nums.length + 1];
		for (int i = 0; i < nums.length; i++) {
			prefix[i + 1] = prefix[i] + nums[i];
		}
		int sum = 0;
		for (int i = 0; i < nums.length; i++) {
			int start = Math.max(0, i - nums[i]);
			sum += prefix[i + 1] - prefix[start];
		}
		return sum;
	}

	public int countStudents(int[] students, int[] sandwiches) {
		int[] cnt = new int[2];
		for (int i = 0; i < students.length; i++) {
			cnt[students[i]]++;
		}
		for (int i = 0; i < sandwiches.length; i++) {
			if (cnt[sandwiches[i]] == 0) {
				return cnt[0] + cnt[1];
			}
			cnt[sandwiches[i]]--;
		}
		return 0;
	}

	public int sumOfTheDigitsOfHarshadNumber(int x) {
		int sum = 0;
		int n = x;
		while (n > 0) {
			sum += n % 10;
			n /= 10;
		}
		return ((x % sum) == 0) ? sum : -1;
	}

	public List<Integer> stableMountains(int[] height, int threshold) {
		List<Integer> res = new ArrayList<>();
		for (int i = 1; i < height.length; i++) {
			if (height[i - 1] > threshold) {
				res.add(i);
			}
		}
		return res;
	}

	public int deleteGreatestValue(int[][] grid) {
		for (int[] row : grid) {
			Arrays.sort(row);
		}
		int sum = 0;
		for (int j = 0; j < grid[0].length; j++) {
			int max = 0;
			for (int i = 0; i < grid.length; i++) {
				max = Math.max(max, grid[i][j]);
			}
			sum += max;
		}
		return sum;
	}

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

	public String destCity(List<List<String>> paths) {
		Set<String> set = new HashSet<>();
		for (List<String> path : paths) {
			set.add(path.get(0));
		}
		for (List<String> path : paths) {
			if (!set.contains(path.get(1))) {
				return path.get(1);
			}
		}
		return "";
	}

	public int[] countPoints(int[][] points, int[][] queries) {
		int[] res = new int[queries.length];
		for (int i = 0; i < queries.length; i++) {
			int x = queries[i][0];
			int y = queries[i][1];
			int r = queries[i][2];
			for (int j = 0; j < points.length; j++) {
				if ((points[j][0] - x) * (points[j][0] - x)
						+ (points[j][1] - y) * (points[j][1] - y) <= r * r) {
					res[i]++;
				}
			}
		}
		return res;
	}

	public int[] shortestToChar(String s, char c) {
		int n = s.length();
		int[] res = new int[n];
		int pos = -n;
		for (int i = 0; i < n; i++) {
			if (s.charAt(i) == c) {
				pos = i;
			}
			res[i] = i - pos;
		}
		for (int i = n - 1; i >= 0; i--) {
			if (s.charAt(i) == c) {
				pos = i;
			}
			res[i] = Math.min(res[i], Math.abs(i - pos));
		}
		return res;
	}

	public String removeTrailingZeros(String num) {
		return num.replaceAll("0*$", "");
	}

	public int[] findIntersectionValues(int[] nums1, int[] nums2) {
		int cnt1 = 0;
		int cnt2 = 0;
		Set<Integer> set1 = new HashSet<>();
		Set<Integer> set2 = new HashSet<>();
		for (int n : nums1) {
			set1.add(n);
		}
		for (int n : nums2) {
			set2.add(n);
		}
		for (int n : nums1) {
			if (set2.contains(n)) {
				cnt1++;
			}
		}
		for (int n : nums2) {
			if (set1.contains(n)) {
				cnt2++;
			}
		}
		return new int[] { cnt1, cnt2 };
	}

	public int longestPalindrome(String s) {
		int[] map = new int[58];
		int sum = 0;
		int res = 0;
		for (char c : s.toCharArray()) {
			map[c - 'A']++;
		}
		for (int i = 0; i < map.length; i++) {
			sum += map[i] & ~1;
			res |= map[i] & 1;
		}
		return sum + res;
	}

	public int findPoisonedDuration(int[] timeSeries, int duration) {
		int sum = 0;
		for (int i = 0; i < timeSeries.length - 1; i++) {
			sum += Math.min(duration, timeSeries[i + 1] - timeSeries[i]);
		}
		return sum + duration;
	}

	private int HammingWeight(int n) {
		n = (n & 0x55555555) + ((n >> 1) & 0x55555555);
		n = (n & 0x33333333) + ((n >> 2) & 0x33333333);
		n = (n & 0x0f0f0f0f) + ((n >> 4) & 0x0f0f0f0f);
		n = (n & 0x00ff00ff) + ((n >> 8) & 0x00ff00ff);
		n = (n & 0x0000ffff) + ((n >> 16) & 0x0000ffff);
		return n;
	}

	public int sumIndicesWithKSetBits(List<Integer> nums, int k) {
		int sum = 0;
		for (int i = 0; i < nums.size(); i++) {
			if (HammingWeight(i) == k) {
				sum += nums.get(i);
			}
		}
		return sum;
	}

	public int minimumOperations(int[] nums) {
		int sum = 0;
		for (int n : nums) {
			sum += (n % 3) > 0 ? 1 : 0;
		}
		return sum;
	}

	public int minimumChairs(String s) {
		int cnt = 0;
		int max = 0;
		for (char c : s.toCharArray()) {
			if (c == 'E') {
				cnt++;
				max = Math.max(max, cnt);
			} else {
				cnt--;
			}
		}
		return max;
	}

	public int strStr(String haystack, String needle) {
		return haystack.indexOf(needle);
	}

	public int countTestedDevices(int[] batteryPercentages) {
		int cnt = 0;
		for (int b : batteryPercentages) {
			cnt = (b > cnt) ? (cnt + 1) : cnt;
		}
		return cnt;
	}

	public int maximumNumberOfStringPairs(String[] words) {
		Set<String> map = new HashSet<>();
		int cnt = 0;
		for (String w : words) {
			if (map.contains(w)) {
				cnt++;
			} else {
				map.add(new String(new char[] { w.charAt(1), w.charAt(0) }));
			}
		}
		return cnt;
	}
}
