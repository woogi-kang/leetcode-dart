import 'dart:collection';

import 'utils.dart';

class Solution {
  bool isValidSudoku(List<List<String>> board) {
    List<Set<String>> rows = List.generate(9, (_) => HashSet<String>());
    List<Set<String>> cols = List.generate(9, (_) => HashSet<String>());
    List<List<Set<String>>> squares = List.generate(3, (_) => 
      List.generate(3, (_) => HashSet<String>()));

    for(int r = 0; r < 9; r++) {
        for(int c = 0; c < 9; c++) {
            if(board[r][c] == '.') {
                continue;
            }

            if(!rows[r].add(board[r][c]) || 
               !cols[c].add(board[r][c]) || 
               !squares[r~/3][c~/3].add(board[r][c])) {
                return false;
            }
        }
    }
    return true;
  }
}

void main() {
  final solution = Solution();
  Utils.runTimer("Valid Sudoku", () {
    return solution.isValidSudoku([
      ["5","3",".",".","7",".",".",".","."],
      ["6",".",".","1","9","5",".",".","."],
      [".","9","8",".",".",".",".","6","."],
      ["8",".",".",".","6",".",".",".","3"],
      ["4",".",".","8",".","3",".",".","1"],
      ["7",".",".",".","2",".",".",".","6"],
      [".","6",".",".",".",".","2","8","."],
      [".",".",".","4","1","9",".",".","5"],
      [".",".",".",".","8",".",".","7","9"]
    ]);
  });
}