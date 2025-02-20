import 'dart:math';

import '../utils.dart';

class Solution {
  int minCostClimbingStairs(List<int> cost) {
    for(int i = cost.length-3; i >= 0; i--) {
        cost[i] += min(cost[i+1], cost[i+2]);
    }

    return min(cost[0], cost[1]);
  }
}

void main() {
  final solution = Solution();

  Utils.runTimer('minCostClimbingStairs', () => solution.minCostClimbingStairs([10, 15, 20]));
  Utils.runTimer('minCostClimbingStairs', () => solution.minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]));
}
