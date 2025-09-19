import 'dart:math';

class Solution {
  int trap(List<int> height) {
    final extended = [0, ...height, 0];
    int last = 0;
    final compressed = [0];
    for (int i = 1; i < extended.length; i++) {
      final h = extended[i];
      if (last == h) continue;
      last = h;
      compressed.add(h);
    }

    if (compressed.length == 1) return 0; // line: y = 0

    final peaks = [];
    final n = compressed.length - 1;
    for (int i = 1; i < n; i++) {
      if (compressed[i - 1] < compressed[i] &&
          compressed[i] > compressed[i + 1]) {
        peaks.add(i);
      }
    }
    if (peaks.length == 1) return 0;

    int size = 0;

    for (var (i, j) = (0, peaks.length - 1); i < j;) {
      final a = compressed[peaks[i]];
      final b = compressed[peaks[j]];
      if (a < b) {
        final k = i + 1;
      }
    }
    return size;
  }
}

void main() {
  final a = Solution().trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]);
}
