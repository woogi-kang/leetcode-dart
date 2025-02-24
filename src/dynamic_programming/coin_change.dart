/* ==========================================
 * 322. Coin Change
 * ==========================================
 * 
 * Category: Dynamic Programming
 * Difficulty: Medium
 * 
 * ==========================================
 * Problem Description
 * ==========================================
 * You are given an integer array coins representing coins of different 
 * denominations and an integer amount representing a total amount of money.
 * Return the fewest number of coins that you need to make up that amount.
 * If that amount of money cannot be made up by any combination of the coins, 
 * return -1.
 * 
 * ==========================================
 * Examples
 * ==========================================
 * Example 1:
 *   Input: coins = [1,2,5], amount = 11
 *   Output: 3
 *   Explanation: 11 = 5 + 5 + 1
 * 
 * Example 2:
 *   Input: coins = [2], amount = 3
 *   Output: -1
 * 
 * ==========================================
 * Constraints
 * ==========================================
 * • 1 <= coins.length <= 12
 * • 1 <= coins[i] <= 2^31 - 1
 * • 0 <= amount <= 10^4
 * 
 * ==========================================
 * Approach
 * ==========================================
 * • Use dynamic programming with bottom-up approach
 * • Create dp array of size amount+1 initialized with amount+1
 * • For each amount from 1 to target, try each coin
 * • Take minimum of current value and 1 + dp[amount-coin]
 * 
 * Time Complexity: O(amount * len(coins))
 * Space Complexity: O(amount)
 */

import 'dart:math';

class Solution {
  int coinChange(List<int> coins, int amount) {
    var dp = List.generate(amount+1, (_) => amount+1);

    dp[0] = 0;

    for(int i = 1; i < amount+1; i++) {
        for(var c in coins) {
            if(i - c >= 0) {
                dp[i] = min(dp[i], 1 + dp[i-c]);
            }
        }
    }

    return dp[amount] != amount+1 ? dp[amount] : -1;
  }
}