import '../utils.dart';
import 'dart:math';

class Solution {
  int maxAreaOfIsland(List<List<int>> grid) {
    if (grid.isEmpty) {
      return 0;
    }

    var rows = grid.length;
    var cols = grid[0].length;
    var visited = Set<String>();
    var maxArea = 0;

    int dfs(int r, int c) {
      if (r < 0 || r >= rows || c < 0 || c >= cols || 
          grid[r][c] == 0 || visited.contains('$r,$c')) {
        return 0;
      }

      visited.add('$r,$c');

      return 1 + dfs(r + 1, c) + dfs(r - 1, c) + 
             dfs(r, c + 1) + dfs(r, c - 1);
    }

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        maxArea = max(maxArea, dfs(r,c));
      }
    }

    return maxArea;
  }
}

void main() {
  final solution = Solution();

  // Test Case 1: Example grid with multiple islands
  Utils.runTimer('Maximum Area of Islands - Multiple Islands', () {
    return solution.maxAreaOfIsland([
      [0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0],
      [0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0],
      [0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0]
    ]); // Expected output: 6
  });

  // Test Case 2: Single cell island
  Utils.runTimer('Maximum Area of Islands - Single Cell', () {
    return solution.maxAreaOfIsland([
      [1]
    ]); // Expected output: 1
  });

  // Test Case 3: Empty grid
  Utils.runTimer('Maximum Area of Islands - Empty Grid', () {
    return solution.maxAreaOfIsland([]); // Expected output: 0
  });

  // Test Case 4: No islands
  Utils.runTimer('Maximum Area of Islands - No Islands', () {
    return solution.maxAreaOfIsland([
      [0, 0, 0],
      [0, 0, 0],
      [0, 0, 0]
    ]); // Expected output: 0
  });

  // Test Case 5: Full grid of islands
  Utils.runTimer('Maximum Area of Islands - Full Grid', () {
    return solution.maxAreaOfIsland([
      [1, 1, 1],
      [1, 1, 1],
      [1, 1, 1]
    ]); // Expected output: 9
  });
}