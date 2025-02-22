import '../utils.dart';

class Solution {
  int lengthOfLIS(List<int> nums) {
      List<int> res = [nums[0]];

      for(int i = 1; i < nums.length; i++) {
          if(res.last >= nums[i]) {
              print(res);            
              res.remove(res.last);
              res.add(nums[i]);
          } else {
            res.add(nums[i]);
          }
      }

    return res.length;
  }
}

void main() {
    var solution = Solution();
    Utils.runTimer('max profit', () => solution.lengthOfLIS([9,1,4,2,3,3,7]));
}