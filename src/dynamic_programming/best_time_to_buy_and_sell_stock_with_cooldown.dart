import 'dart:math' show max;

import '../utils.dart';

class Solution {
  int maxProfit(List<int> prices) {
    final dp = <String, int>{};

    int dfs(int i, bool buying) {
        if(i >= prices.length) {
            return 0;
        }

        final key = '$i,$buying';
        if(dp.containsKey(key)) {
            return dp[key]!;
        }

        final cooldown = dfs(i+1, buying);

        if(buying) {
            final buy = dfs(i+1, false) - prices[i];
            dp[key] = max(buy, cooldown);
        } else {
            final sell = dfs(i+2, true) + prices[i];
            dp[key] = max(sell, cooldown);
        }

        return dp[key]!;
    }

    return dfs(0, true);
  }
}

void main() {
  var solution = Solution();

  Utils.runTimer('max profit', () => solution.maxProfit([1,2,3,0,2]));
}