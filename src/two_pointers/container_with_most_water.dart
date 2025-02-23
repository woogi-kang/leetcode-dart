/* ==========================================
 * 11. Container With Most Water
 * ==========================================
 * 
 * Category: Two Pointers, Array
 * Difficulty: Medium
 * 
 * ==========================================
 * Problem Description
 * ==========================================
 * You are given an integer array height of length n. There are n vertical lines
 * drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
 * Find two lines that together with the x-axis form a container, such that the
 * container contains the most water.
 * 
 * Return the maximum amount of water a container can store.
 * Notice that you may not slant the container.
 * 
 * ==========================================
 * Examples
 * ==========================================
 * Example 1:
 *   Input: height = [1,8,6,2,5,4,8,3,7]
 *   Output: 49
 *   Explanation: The max area is between lines at index 1 and 8 (8 and 7)
 *                Area = min(8,7) * (8-1) = 7 * 7 = 49
 * 
 * Example 2:
 *   Input: height = [1,1]
 *   Output: 1
 *   Explanation: The max area is between the two lines
 *                Area = min(1,1) * (1-0) = 1
 * 
 * ==========================================
 * Constraints
 * ==========================================
 * • n == height.length
 * • 2 <= n <= 10^5
 * • 0 <= height[i] <= 10^4
 * 
 * ==========================================
 * Approach
 * ==========================================
 * • Use two pointers technique (left and right)
 * • Calculate area between pointers
 * • Move the pointer with smaller height inward
 * • Keep track of maximum area seen
 * 
 * Time Complexity: O(n) - single pass through array
 * Space Complexity: O(1) - constant extra space
 */

import 'dart:math';
import '../utils.dart';

class Solution {
  int maxArea(List<int> height) {
    var l = 0;
    var r = height.length - 1;
    var maxArea = 0;

    while(l < r) {
        var minHeight = min(height[l], height[r]);
        var area = minHeight * (r-l);
        maxArea = max(area, maxArea);

        if(height[l] < height[r]) {
            l += 1;
        } else {
            r -= 1;
        }
    }

    return maxArea;
  }
}

void main() {
  final solution = Solution();

  // Test Case 1: Example from problem description
  Utils.runTimer('Container With Most Water - Example Case', () {
    return solution.maxArea([1,8,6,2,5,4,8,3,7]); // Expected output: 49
  });

  // Test Case 2: Minimum case with two elements
  Utils.runTimer('Container With Most Water - Two Elements', () {
    return solution.maxArea([1,1]); // Expected output: 1
  });

  // Test Case 3: Increasing heights
  Utils.runTimer('Container With Most Water - Increasing Heights', () {
    return solution.maxArea([1,2,3,4,5,6]); // Expected output: 8
  });

  // Test Case 4: Decreasing heights
  Utils.runTimer('Container With Most Water - Decreasing Heights', () {
    return solution.maxArea([6,5,4,3,2,1]); // Expected output: 8
  });

  // Test Case 5: Same heights
  Utils.runTimer('Container With Most Water - Same Heights', () {
    return solution.maxArea([5,5,5,5,5]); // Expected output: 20
  });

  // Test Case 6: Large values
  Utils.runTimer('Container With Most Water - Large Values', () {
    return solution.maxArea([10000,1,10000]); // Expected output: 20000
  });

  // Test Case 7: Valley pattern
  Utils.runTimer('Container With Most Water - Valley Pattern', () {
    return solution.maxArea([10,5,2,1,8,9,10]); // Expected output: 50
  });
}