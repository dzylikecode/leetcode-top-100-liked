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
    final vs = memory.keys.toList();
    vs.sort();
    final finds = <List<int>>[];

    // 1. a < b < c
    for (int i = 0; i < vs.length - 2; i++) {
      for (var (j, k) = (i + 1, vs.length - 1); j < k;) {
        final sum = vs[i] + vs[j] + vs[k];
        if (sum == 0) finds.add([vs[i], vs[j], vs[k]]);
        if (sum <= 0) j++;
        if (sum >= 0) k--;
      }
    }

    // 2. a = b < c
    for (var (i, k) = (0, vs.length - 1); i < k;) {
      if (memory[vs[i]]!.length < 2) {
        i++;
        continue;
      }
      final j = i;
      final sum = vs[i] + vs[j] + vs[k];
      if (sum == 0) finds.add([vs[i], vs[j], vs[k]]);
      if (sum <= 0) i++;
      if (sum >= 0) k--;
    }

    // 3. a < b = c
    for (var (i, k) = (0, vs.length - 1); i < k;) {
      if (memory[vs[k]]!.length < 2) {
        k--;
        continue;
      }
      final j = k;
      final sum = vs[i] + vs[j] + vs[k];
      if (sum == 0) finds.add([vs[i], vs[j], vs[k]]);
      if (sum <= 0) i++;
      if (sum >= 0) k--;
    }

    // 3. a = b = c = 0
    if (memory[0] != null && memory[0]!.length >= 3) {
      finds.add([0, 0, 0]);
    }

    return finds;
  }
}
