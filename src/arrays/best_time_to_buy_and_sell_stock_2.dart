/* ==========================================
 * 122. Best Time to Buy and Sell Stock II
 * ==========================================
 * 
 * Category: Arrays, Greedy
 * Difficulty: Medium
 * 
 * ==========================================
 * Problem Description
 * ==========================================
 * You are given an array prices where prices[i] is the price of a given stock
 * on the ith day. On each day, you may decide to buy and/or sell the stock.
 * You can only hold at most one share of the stock at any time.
 * However, you can buy it then immediately sell it on the same day.
 * 
 * ==========================================
 * Task
 * ==========================================
 * Find and return the maximum profit you can achieve.
 * 
 * ==========================================
 * Examples
 * ==========================================
 * Example 1:
 *   Input: prices = [7,1,5,3,6,4]
 *   Output: 7
 *   Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
 *                Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
 *                Total profit is 4 + 3 = 7.
 * 
 * Example 2:
 *   Input: prices = [1,2,3,4,5]
 *   Output: 4
 *   Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 *                Total profit is 4.
 * 
 * ==========================================
 * Constraints
 * ==========================================
 * • 1 <= prices.length <= 3 * 10^4
 * • 0 <= prices[i] <= 10^4
 * 
 * ==========================================
 * Approach
 * ==========================================
 * • Use greedy approach
 * • Add up all positive price differences
 * • Each positive difference represents a profitable trade
 * 
 * Time Complexity: O(n) - single pass through array
 * Space Complexity: O(1) - constant extra space
 */

import '../utils.dart';

class Solution {
  int maxProfit(List<int> prices) {
    var profit = 0;

    for(int i = 1; i < prices.length; i++) {
        if(prices[i] > prices[i-1]) {
            profit += prices[i] - prices[i-1];
        }
    }

    return profit;
  }
}

void main() {
  final solution = Solution();

  // Test Case 1: Multiple buy-sell opportunities
  Utils.runTimer('Best Time to Buy and Sell Stock II - Multiple Trades', () {
    return solution.maxProfit([7,1,5,3,6,4]); // Expected output: 7
  });

  // Test Case 2: Continuously increasing prices
  Utils.runTimer('Best Time to Buy and Sell Stock II - Increasing Prices', () {
    return solution.maxProfit([1,2,3,4,5]); // Expected output: 4
  });

  // Test Case 3: Continuously decreasing prices
  Utils.runTimer('Best Time to Buy and Sell Stock II - Decreasing Prices', () {
    return solution.maxProfit([5,4,3,2,1]); // Expected output: 0
  });

  // Test Case 4: Single day (edge case)
  Utils.runTimer('Best Time to Buy and Sell Stock II - Single Day', () {
    return solution.maxProfit([1]); // Expected output: 0
  });

  // Test Case 5: Alternating prices
  Utils.runTimer('Best Time to Buy and Sell Stock II - Alternating Prices', () {
    return solution.maxProfit([1,7,2,8,3,9]); // Expected output: 18
  });

  // Test Case 6: Same prices
  Utils.runTimer('Best Time to Buy and Sell Stock II - Same Prices', () {
    return solution.maxProfit([4,4,4,4]); // Expected output: 0
  });

  // Test Case 7: Large fluctuations
  Utils.runTimer('Best Time to Buy and Sell Stock II - Large Fluctuations', () {
    return solution.maxProfit([100,1,100,1,100]); // Expected output: 198
  });
}