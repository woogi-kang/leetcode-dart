import 'dart:math' as math;

import 'utils.dart';

class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    var count = {};
    var frequent = List<List<int>>.generate(nums.length + 1, (_) => []);

    for(int num in nums) {
      count[num] = (count[num] ?? 0) + 1;
    }

    for(int key in count.keys) {
      frequent[count[key]].add(key);
    }

    var res = <int>[];
    for(int i = frequent.length - 1; i >= 0; i--) {
      if(res.length >= k) {
        break;
      }
      res.addAll(frequent[i]);
    }
    return res;
  }
}

void main() {
  final solution = Solution();
  Utils.runTimer("Top K Frequent Elements", () {
    return solution.topKFrequent([1, 1, 1, 2, 2, 3], 2);
  });
}
