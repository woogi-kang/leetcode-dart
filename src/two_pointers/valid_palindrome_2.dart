/* ==========================================
 * 680. Valid Palindrome II
 * ==========================================
 * 
 * Category: Two Pointers, String
 * Difficulty: Easy
 * 
 * ==========================================
 * Problem Description
 * ==========================================
 * Given a string s, return true if the s can be palindrome after deleting 
 * at most one character from it.
 * 
 * ==========================================
 * Examples
 * ==========================================
 * Example 1:
 *   Input: s = "aba"
 *   Output: true
 * 
 * Example 2:
 *   Input: s = "abca"
 *   Output: true
 *   Explanation: You could delete the character 'c'.
 * 
 * ==========================================
 * Constraints
 * ==========================================
 * • 1 <= s.length <= 10^5
 * • s consists of lowercase English letters
 * 
 * ==========================================
 * Approach
 * ==========================================
 * • Use two pointers approach
 * • When mismatch found, try skipping one character from either side
 * • Check if remaining substring is palindrome
 * 
 * Time Complexity: O(n) - where n is the length of string
 * Space Complexity: O(1) - constant extra space
 */

import '../utils.dart';

class Solution {
  bool validPalindrome(String s) {
    return isPalindrome(s);
  }

  bool isPalindrome(String s) {
    var l = 0;
    var r = s.length - 1;

    while(l < r) {
        if(s[l] != s[r]) {
            var left = s.substring(l+1, r+1);
            var right = s.substring(l, r);
            
            if(left == left.split('').reversed.join() || right == right.split('').reversed.join())
                return true;

            return false;
        }
        l += 1;
        r -= 1;
    }

    return true;
  }
}

void main() {
  final solution = Solution();

  // Test Case 1: Already a palindrome
  Utils.runTimer('Valid Palindrome II - Already Palindrome', () {
    return solution.validPalindrome("aba"); // Expected: true
  });

  // Test Case 2: Can become palindrome after one deletion
  Utils.runTimer('Valid Palindrome II - One Deletion Needed', () {
    return solution.validPalindrome("abca"); // Expected: true
  });

  // Test Case 3: Cannot become palindrome
  Utils.runTimer('Valid Palindrome II - Impossible', () {
    return solution.validPalindrome("abc"); // Expected: false
  });

  // Test Case 4: Multiple same characters
  Utils.runTimer('Valid Palindrome II - Repeated Characters', () {
    return solution.validPalindrome("deeee"); // Expected: true
  });

  // Test Case 5: Single character
  Utils.runTimer('Valid Palindrome II - Single Character', () {
    return solution.validPalindrome("a"); // Expected: true
  });

  // Test Case 6: Empty string
  Utils.runTimer('Valid Palindrome II - Empty String', () {
    return solution.validPalindrome(""); // Expected: true
  });

  // Test Case 7: Long palindrome
  Utils.runTimer('Valid Palindrome II - Long String', () {
    return solution.validPalindrome("aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga"); // Expected: true
  });
}
