class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      final a = nums[i];
      for (int j = i + 1; j < nums.length; j++) {
        final b = nums[j];
        if (a + b == target) return [i, j];
      }
    }
    throw Error();
  }
}
