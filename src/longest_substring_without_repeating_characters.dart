import 'dart:math' as math;

import 'utils.dart';

class Solution {
  int lengthOfLongestSubstring(String s) {
    Set<String> set = {};
    int left = 0; 
    int max = 0;

    for(int right = 0; right < s.length; right++) {
      while(set.contains(s[right])) {
        set.remove(s[left]);
        left += 1;
      }

      set.add(s[right]);
      max = math.max(max, right - left + 1);
    }
    return max;
  }
}

void main() {
  final solution = Solution();

  Utils.runTimer("Longest Substring Without Repeating Characters", () {
    return solution.lengthOfLongestSubstring("abcabcbb");
  });

  Utils.runTimer("Longest Substring Without Repeating Characters", () {
    return solution.lengthOfLongestSubstring("bbbbb");
  });

  Utils.runTimer("Longest Substring Without Repeating Characters", () {
    return solution.lengthOfLongestSubstring("pwwkewasdfbasdfqwertyuio");
  });
}
