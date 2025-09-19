import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int i = 0;
    int j = height.length - 1;
    int maxSize = 0;
    while (i < j) {
      final a = j - i;
      final b = min(height[i], height[j]);
      maxSize = max(maxSize, a * b);
      if (height[i] < height[j])
        i++;
      else
        j--;
    }
    return maxSize;
  }
}
