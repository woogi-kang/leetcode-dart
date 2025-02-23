import 'dart:math';
import 'dart:collection';

import '../utils.dart';

class Solution {
  int lengthOfLongestSubstring(String s) {
    var l = 0;
    var r = 0;
    var maxLength = 0;

    var subS = '';
    var map = HashMap<String, int>();

    while(r < s.length) {
        if(map[s[r]] != 0) {
            subS = subS.substring(map[s[r]]! -1, map[s[r]]);
            l = r - 1;
            map[s[r]] = 0;
        } else {
            subS += s[r];
            r += 1;
            map[s[r]] = r;
        }

        maxLength = max(maxLength, subS.length);
    }

    return maxLength;
  }
}

void main() {
  var solution = Solution();

  Utils.runTimer("Longest Substring Without Repeating Characters", () {
    return solution.lengthOfLongestSubstring("pwwkewasdfbasdfqwertyuio");
  });
}