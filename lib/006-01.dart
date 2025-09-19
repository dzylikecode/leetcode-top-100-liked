class Solution {
  List<List<int>> threeSum(List<int> nums) {
    final memory = <int, List<int>>{};
    for (int i = 0; i < nums.length; i++) {
      if (memory[nums[i]] == null) {
        memory[nums[i]] = [i];
      } else {
        memory[nums[i]]!.add(i);
      }
    }
    final finds = <(int, int, int)>{};
    for (int i = 0; i < nums.length - 2; i++) {
      for (int j = i + 1; j < nums.length - 1; j++) {
        final x = nums[i];
        final y = nums[j];
        final z = 0 - nums[i] - nums[j];
        final targetKey = [x, y, z]..sort();
        final target = (targetKey[0], targetKey[1], targetKey[2]);
        if (finds.contains(target)) continue;
        final ks = memory[z];
        if (ks == null) continue;
        if (ks.where((k) => k > j).isEmpty) continue;
        finds.add(target);
      }
    }
    return finds.map((f) => [f.$1, f.$2, f.$3]).toList();
  }
}
