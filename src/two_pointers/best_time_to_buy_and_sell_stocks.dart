/* ==========================================
 * 121. Best Time to Buy and Sell Stock
 * ==========================================
 * 
 * Category: Two Pointers, Dynamic Programming
 * Difficulty: Easy
 * 
 * ==========================================
 * Problem Description
 * ==========================================
 * You are given an array 'prices' where prices[i] is the price of a given stock
 * on the ith day. You want to maximize your profit by choosing a single day to
 * buy one stock and choosing a different day in the future to sell that stock.
 * 
 * ==========================================
 * Task
 * ==========================================
 * Return the maximum profit you can achieve from this transaction.
 * If you cannot achieve any profit, return 0.
 * 
 * ==========================================
 * Examples
 * ==========================================
 * Example 1:
 *   Input: prices = [7,1,5,3,6,4]
 *   Output: 5
 *   Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6)
 *                profit = 6-1 = 5
 * 
 * Example 2:
 *   Input: prices = [7,6,4,3,1]
 *   Output: 0
 *   Explanation: No transactions are done (no profit possible)
 * 
 * ==========================================
 * Constraints
 * ==========================================
 * • 1 <= prices.length <= 10^5
 * • 0 <= prices[i] <= 10^4
 * 
 * ==========================================
 * Approach
 * ==========================================
 * • Use two pointers technique
 * • Track minimum buying price seen so far
 * • Calculate maximum profit at each step
 * 
 * Time Complexity: O(n) - single pass through array
 * Space Complexity: O(1) - constant extra space
 * 
 * @author Your Name
 * @date ${new Date().toISOString().split('T')[0]}
 */

import 'dart:math';

import '../utils.dart';

class Solution {
  int maxProfit(List<int> prices) {
    if(prices.length == 1) {
        return 0;
    }

    var l = 0;
    var r = 1;
    var maxProfit = 0;

    while(r < prices.length) {
        if(prices[l] < prices[r]) {
            var profit = prices[r] - prices[l];
            maxProfit = max(maxProfit, profit);
        } else {
            l = r;
        }
        r += 1;
    }

    return maxProfit;
  }
}

void main() {
  final solution = Solution();

  // Test Case 1: Regular case with profit
  Utils.runTimer('Best Time to Buy and Sell Stock - Regular Case', () {
    return solution.maxProfit([7,1,5,3,6,4]); // Expected output: 5
  });

  // Test Case 2: Decreasing prices (no profit)
  Utils.runTimer('Best Time to Buy and Sell Stock - No Profit', () {
    return solution.maxProfit([7,6,4,3,1]); // Expected output: 0
  });

  // Test Case 3: Single day (edge case)
  Utils.runTimer('Best Time to Buy and Sell Stock - Single Day', () {
    return solution.maxProfit([1]); // Expected output: 0
  });

  // Test Case 4: Two days with profit
  Utils.runTimer('Best Time to Buy and Sell Stock - Two Days', () {
    return solution.maxProfit([1,2]); // Expected output: 1
  });

  // Test Case 5: Large price difference
  Utils.runTimer('Best Time to Buy and Sell Stock - Large Difference', () {
    return solution.maxProfit([3,100,1,100]); // Expected output: 99
  });

  // Test Case 6: Same prices
  Utils.runTimer('Best Time to Buy and Sell Stock - Same Prices', () {
    return solution.maxProfit([1,1,1,1]); // Expected output: 0
  });

  // Test Case 7: Valley then peak pattern
  Utils.runTimer('Best Time to Buy and Sell Stock - Valley Peak', () {
    return solution.maxProfit([9,7,6,3,2,5,8,6]); // Expected output: 6
  });
}