class Solution {
  void moveZeroes(List<int> nums) {
    final avaliables = <int>[];
    int curSeat = 0;
    int zeros = 0;
    final length = nums.length;
    for (int i = 0; i < length; i++) {
      final cantMove = curSeat >= avaliables.length;
      final n = nums[i];
      if (n == 0) {
        avaliables.add(i);
        zeros++;
      }
      final dontNeedMove = n == 0;

      if (cantMove || dontNeedMove) continue;
      nums[avaliables[curSeat]] = n;
      avaliables.add(i);
      curSeat++;
    }
    for (int i = zeros; i > 0; i--) {
      nums[length - i] = 0;
    }
  }
}
