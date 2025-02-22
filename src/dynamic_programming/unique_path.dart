import '../utils.dart';

class Solution {
  int uniquePaths(int m, int n) {
    List<int> dp = List.filled(n, 1);
    
    for(int i = 1; i < m; i++) {
      for(int j = 1; j < n; j++) {
        dp[j] += dp[j-1];
      }
    }
    
    return dp[n-1];
  }
}

void main() {
  Solution solution = Solution();

  Utils.runTimer('uniquePaths', () => solution.uniquePaths(3, 7));
  Utils.runTimer('uniquePaths', () => solution.uniquePaths(3, 2));
}
