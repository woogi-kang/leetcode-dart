import '../utils.dart';

class Solution {
  int longestPalindrome(String s) {
    var res = '';
    var resLen = 0;

    for (int i = 0; i < s.length; i++) {
      var l = i;
      var r = i;

      while (l >= 0 && r < s.length && s[l] == s[r]) {
        if (r - l + 1 >= resLen) {
          res = s.substring(l, r+1);
          resLen = res.length;
        }

        l -= 1;
        r += 1;
      }

      l = i;
      r = i+1;

      while (l >= 0 && r < s.length && s[l] == s[r]) {
        if (r - l + 1 >= resLen) {
          res = s.substring(l, r+1);
          resLen = res.length;
        }

        l -= 1;
        r += 1;
      }
    }

    return resLen;
  }
}

void main() {
  final solution = Solution();

  Utils.runTimer('longestPalindrome', () => solution.longestPalindrome('babad'));
  Utils.runTimer('longestPalindrome', () => solution.longestPalindrome('cbbd'));
  Utils.runTimer('longestPalindrome', () => solution.longestPalindrome('a'));
  Utils.runTimer('longestPalindrome', () => solution.longestPalindrome('ac'));
  Utils.runTimer('longestPalindrome', () => solution.longestPalindrome('aaaaaaa'));
}
