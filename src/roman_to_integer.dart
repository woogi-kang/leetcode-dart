import 'utils.dart';

class Solution {
  int romanToInt(String s) {
    Map<String, int> romanMap = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };

    int result = 0;

    for(int i = 0; i < s.length; i++) {
      if(i + 1 == s.length) {
        result += romanMap[s[i]]!;
        break;
      } else {
        int current = romanMap[s[i]]!;
        int next = romanMap[s[i+1]] ?? 0;

        if(next > current){
          result -= current;
        } else {
          result += current;
        }
      }
    }
    
    return result;
  }
}

void main() {
  final solution = Solution();

  Utils.runTimer("Roman to Integer", () {
    return solution.romanToInt("III");
  });

  Utils.runTimer("Roman to Integer", () {
    return solution.romanToInt("IV");
  });

  Utils.runTimer("Roman to Integer", () {
    return solution.romanToInt("MCMXCIV");
  });
}