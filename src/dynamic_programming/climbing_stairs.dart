import '../utils.dart';

class Solution {
  int climbStairs(int n) {
    var one = 1;
    var two = 1;

    for(int i =0; i < n-1; i++) {
        var temp = one;
        one = one + two;
        two = temp;
    }

    return one;
  }
}

void main() {
  var solution = Solution();

  Utils.runTimer('climbStairs', () => solution.climbStairs(5));
  Utils.runTimer('climbStairs', () => solution.climbStairs(10));
  Utils.runTimer('climbStairs', () => solution.climbStairs(15));
  Utils.runTimer('climbStairs', () => solution.climbStairs(20));
}
