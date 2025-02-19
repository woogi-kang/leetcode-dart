import 'utils.dart';

class Solution {
  List<String> letterCombinations(String digits) {
    List<String> res = [];

    const Map<String, String> keyboard = {
      "2": "abc",
      "3": "def",
      "4": "ghi",
      "5": "jkl",
      "6": "mno",
      "7": "pqrs",
      "8": "tuv",
      "9": "wxyz"
    };

    void backtracking(int index, String str) {
      if (str.length == digits.length) {
        res.add(str);
        return;
      }

      var combs = keyboard[digits[index]];

      for (int i = 0; i < (combs?.length ?? 0); i++) {
        backtracking(index + 1, str + (combs?[i] ?? ''));
      }
    }

    if (digits.isNotEmpty) {
      backtracking(0, '');
    }

    return res;
  }
}

void main() {
  final solution = Solution();
  Utils.runTimer("Letter Combinations of Phone Number", () {
    return solution.letterCombinations("23");
  });
}
