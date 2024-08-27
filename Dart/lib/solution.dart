class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
  //TODO add list to arr, arr2list
  List toArray(ListNode head) {
    //ListNode inputListNode = ListNode(input0[i][0]);
    //ListNode curNode = inputListNode;
    //for (var j = 1; j < input0[i].length; j++) {
    //	curNode.next = ListNode(input0[i][j]);
    //	curNode = curNode.next!;
    //}
    //var outputArr = [];
    //for (ListNode? curNode = output;
    //	curNode != null;
    //	curNode = curNode.next) {
    //	outputArr.add(curNode!.val);
    //}
    return [];
  }
}

class Solution {
  List<int> findIntersectionValues(List<int> nums1, List<int> nums2) {
    var set1 = nums1.toSet();
    var set2 = nums2.toSet();
    var cnt1 = nums1.where((n) => set2.contains(n)).length;
    var cnt2 = nums2.where((n) => set1.contains(n)).length;
    return List<int>.from([cnt1, cnt2]);
  }
  int numPrimeArrangements(int n) {
    var primeCount = countPrimes(n);
    var nonPrimeCount = n - primeCount;
    var primeArrange = calculateFactorial(primeCount) % 1000000007;
    var nonPrimeArrange = calculateFactorial(nonPrimeCount) % 1000000007;
    return (primeArrange * nonPrimeArrange) % 1000000007;
  }

  int countPrimes(int n) {
    var primeCount = 0;
    for (var i = 2; i <= n; i++) {
      if (isPrime(i)) {
        primeCount++;
      }
    }
    return primeCount;
  }

  bool isPrime(int num) {
    if (num < 2) {
      return false;
    }
    for (var i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
  }

  int calculateFactorial(int num) {
    var factorial = 1;
    for (var i = 1; i <= num; i++) {
      factorial = (factorial * i) % 1000000007;
    }
    return factorial;
  }

  int longestPalindrome(String s) {
    var map = <String, int>{};
    var sum = 0;
    var res = 0;
    for (var i = 0; i < s.length; i++) {
      String c = s[i];
      map[c] = (map[c] ?? 0) + 1;
    }
    map.forEach((key, value) {
      sum += value & ~1;
      res |= value & 1;
    });
    return sum + res;
  }

  int _gcd(int a, int b) {
    var c = a % b;
    while (c != 0) {
      a = b;
      b = c;
      c = a % b;
    }
    return b;
  }

  String gcdOfStrings(String str1, String str2) {
    return ((str1 + str2) == (str2 + str1))
        ? str1.substring(0, _gcd(str1.length, str2.length))
        : "";
  }

  int minimumOperations(List<int> nums) {
    return nums.where((n) => (0 != (n % 3))).length;
  }

  List<int> leftRightDifference(List<int> nums) {
    var ret = List.filled(nums.length, 0);
    var left = 0;
    var right =
        nums.fold(0, (previousValue, element) => (previousValue + element));
    for (var i = 0; i < nums.length; i++) {
      right -= nums[i];
      ret[i] = (right - left).abs();
      left += nums[i];
    }
    return ret;
  }

  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }

  int countTestedDevices(List<int> batteryPercentages) {
    var cnt = 0;
    batteryPercentages.forEach((b) {
      if (b > cnt) {
        cnt++;
      }
    });
    return cnt;
  }
}
