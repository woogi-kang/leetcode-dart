class Solution {
  int countSubstrings(String s) {
    var res = 0;

    for(int i = 0; i < s.length; i++) {
      var l = i;
      var r = i;

      while(l >= 0 && r < s.length && s[l] == s[r]) {
        res += 1;

        l -= 1;
        r += 1;
      }

      l = i;
      r = i+1;

      while(l >= 0 && r < s.length && s[l] == s[r]) {
        res += 1;

        l -= 1;
        r += 1;
      }
    }

    return res;
  }
}