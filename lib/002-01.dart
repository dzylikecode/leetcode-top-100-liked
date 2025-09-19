class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    final groups = <String, List<String>>{};
    for (final str in strs) {
      final group = groups[stringKey(str)];
      if (group == null) {
        groups[stringKey(str)] = [str];
      } else {
        group.add(str);
      }
    }

    return groups.values.toList();
  }

  String stringKey(String str) {
    return str
        .split('')
        .fold(List.filled(26, 0), (v, s) {
          v[charToIndex(s)]++;
          return v;
        })
        .join(',');
  }

  int charToIndex(String a) => a.codeUnitAt(0) - 'a'.codeUnitAt(0);
}
