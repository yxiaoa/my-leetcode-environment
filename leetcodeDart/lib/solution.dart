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
  int longestPalindrome(String s) {
    var map = <String, int>{};
    var sum = 0;
    var res = 0;
    for (var i = 0; i < s.length; i++) {
      String c = s[i];
      if (map[c] != null) {
        map[c] = (map[c])! + 1;
      } else {
        map[c] = 1;
      }
    }
    map.forEach((key, value) {
      if (value % 2 == 0) {
        sum += value;
      } else {
        sum += value - 1;
        res = 1;
      }
    });
    //TODO refactor
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
