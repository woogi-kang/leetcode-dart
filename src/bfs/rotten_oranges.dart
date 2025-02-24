/* ==========================================
 * 994. Rotting Oranges
 * ==========================================
 * 
 * Category: BFS, Matrix
 * Difficulty: Medium
 * 
 * ==========================================
 * Problem Description
 * ==========================================
 * You are given an m x n grid where each cell can have one of three values:
 * • 0 representing an empty cell
 * • 1 representing a fresh orange
 * • 2 representing a rotten orange
 * 
 * Every minute, any fresh orange that is 4-directionally adjacent to a rotten 
 * orange becomes rotten.
 * 
 * Return the minimum number of minutes that must elapse until no cell has a 
 * fresh orange. If this is impossible, return -1.
 * 
 * ==========================================
 * Examples
 * ==========================================
 * Example 1:
 *   Input: grid = [[2,1,1],[1,1,0],[0,1,1]]
 *   Output: 4
 * 
 * Example 2:
 *   Input: grid = [[2,1,1],[0,1,1],[1,0,1]]
 *   Output: -1
 *   Explanation: The orange in the bottom left corner never rots.
 * 
 * ==========================================
 * Constraints
 * ==========================================
 * • m == grid.length
 * • n == grid[i].length
 * • 1 <= m, n <= 10
 * • grid[i][j] is 0, 1, or 2
 * 
 * ==========================================
 * Approach
 * ==========================================
 * • Use BFS to simulate the rotting process
 * • Keep track of fresh oranges count
 * • Process all rotten oranges level by level
 * • Check if all oranges can be rotten
 * 
 * Time Complexity: O(m*n) where m and n are dimensions of the grid
 * Space Complexity: O(m*n) for the queue in worst case
 */

import 'dart:collection';
import '../utils.dart';

class Solution {
  int orangesRotting(List<List<int>> grid) {
    var fresh = 0;
    var time = 0;
    var queue = Queue<(int, int)>();

    var rows = grid.length;
    var cols = grid[0].length;

    for(int r = 0; r < rows; r++) {
        for(int c = 0; c < cols; c++) {
            if(grid[r][c] == 1) {
                fresh += 1;
            }
            
            if(grid[r][c] == 2) {
                queue.addLast((r, c));
            }
        }
    }
    
    var dimensions = [[0,1], [0,-1], [1, 0], [-1,0]];

    while(queue.isNotEmpty && fresh > 0) {
        var length = queue.length;
        for(int i = 0; i < length; i++) {
            var (r, c) = queue.removeFirst();

            for(var d in dimensions) {
                var dr = r + d[0];
                var dc = c + d[1];

                if(dr >= 0 && dc >= 0 && dr < rows && dc < cols && grid[dr][dc] == 1) {
                    grid[dr][dc] = 2;
                    queue.addLast((dr, dc));
                    fresh--;
                }
            }
        }
        time += 1;
    }

    return fresh == 0 ? time : -1;
  }
}

void main() {
  final solution = Solution();

  // Test Case 1: Normal case - all oranges rot
  Utils.runTimer('Rotting Oranges - Normal Case', () {
    return solution.orangesRotting([
      [2,1,1],
      [1,1,0],
      [0,1,1]
    ]); // Expected: 4
  });

  // Test Case 2: Impossible case - isolated orange
  Utils.runTimer('Rotting Oranges - Impossible Case', () {
    return solution.orangesRotting([
      [2,1,1],
      [0,1,1],
      [1,0,1]
    ]); // Expected: -1
  });

  // Test Case 3: Already all rotten
  Utils.runTimer('Rotting Oranges - All Rotten', () {
    return solution.orangesRotting([
      [2,2,2],
      [2,2,2],
      [2,2,2]
    ]); // Expected: 0
  });

  // Test Case 4: No oranges
  Utils.runTimer('Rotting Oranges - No Oranges', () {
    return solution.orangesRotting([
      [0,0,0],
      [0,0,0],
      [0,0,0]
    ]); // Expected: 0
  });

  // Test Case 5: Single cell
  Utils.runTimer('Rotting Oranges - Single Cell', () {
    return solution.orangesRotting([
      [1]
    ]); // Expected: -1
  });

  // Test Case 6: Multiple rotten sources
  Utils.runTimer('Rotting Oranges - Multiple Sources', () {
    return solution.orangesRotting([
      [2,1,1],
      [1,1,1],
      [1,1,2]
    ]); // Expected: 2
  });

  // Test Case 7: Complex pattern
  Utils.runTimer('Rotting Oranges - Complex Pattern', () {
    return solution.orangesRotting([
      [2,1,1,1,2],
      [1,0,0,0,1],
      [1,0,1,0,1],
      [1,0,0,0,1],
      [2,1,1,1,2]
    ]); // Expected: 1
  });
}