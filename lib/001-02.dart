class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final memory = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      final a = nums[i];
      final b = target - a;
      final j = memory[b];
      if (j != null) return [i, j];
      memory[a] = i;
    }
    throw Error();
  }
}
