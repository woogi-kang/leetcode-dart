import 'dart:collection';
import 'utils.dart';

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> hash = HashMap();

    for(int i = 0; i < nums.length; i++) {
      if(hash.containsKey(target-nums[i])) {
        return [hash[target-nums[i]]!, i];
      }
      hash[nums[i]] = i;
    }

    return [];
  }
}

void main() {
  final solution = Solution();
  
  Utils.runTimer('Two Sum', () {
    return solution.twoSum([2, 7, 11, 15], 9);
  });

  // Add more test cases
  Utils.runTimer('Two Sum - Large Input', () {
    final largeInput = List.generate(10000, (i) => i);
    return solution.twoSum(largeInput, 19998);
  });
}