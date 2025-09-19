import 'dart:math';

class Solution {
  int longestConsecutive(List<int> nums) {
    final memory = nums.fold(<int>{}, (m, n) => m..add(n));
    int long = 0;
    for (final a in memory) {
      if (memory.contains(a + 1)) continue;
      int length = 1;
      for (int next = a - 1; memory.contains(next); next--) {
        length++;
      }
      long = max(length, long);
    }
    return long;
  }
}
