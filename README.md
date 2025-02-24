# LeetCode Solutions in Dart

This repository contains my solutions to LeetCode problems implemented in Dart.

## Project Structure

```
leetcode-dart/
├── src/                # Solutions to LeetCode problems
│   ├── arrays/
│   │   └── best_time_to_buy_and_sell_stock_2.dart
│   ├── dynamic_programming/
│   │   ├── best_time_to_buy_and_sell_stock_with_cooldown.dart
│   │   ├── climbing_stairs.dart
│   │   ├── longest_increasing_subsequences.dart
│   │   ├── longest_palindrome.dart
│   │   ├── min_costs_climbing_stairs.dart
│   │   ├── palindromic_substrings.dart
│   │   └── unique_path.dart
│   ├── sliding_window/
│   │   └── longest_substring_without_repeating_characters.dart
│   ├── two_pointers/
│   │   ├── best_time_to_buy_and_sell_stocks.dart
│   │   └── container_with_most_water.dart
│   ├── dfs/
│   │   └── maximum_area_of_islands.dart
│   ├── two_sum.dart
│   ├── roman_to_integer.dart
│   ├── letter_combinations_of_phone_number.dart
│   ├── valid_sudoku.dart
│   ├── top_k_frequent_elements.dart
│   └── utils.dart     # Utility functions (timing, memory tracking)
├── pubspec.yaml       # Dart project configuration
└── README.md
```



## Solutions

| Problem | File | Difficulty | Tags |
|---------|------|------------|------|
| [1. Two Sum](https://leetcode.com/problems/two-sum/) | [two_sum.dart](src/two_sum.dart) | Easy | Hash Table, Array |
| [3. Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/) | [longest_substring.dart](src/longest_substring_without_repeating_characters.dart) | Medium | Sliding Window, Hash Set |
| [11. Container With Most Water](https://leetcode.com/problems/container-with-most-water/) | [container_water.dart](src/two_pointers/container_with_most_water.dart) | Medium | Two Pointers, Array |
| [13. Roman to Integer](https://leetcode.com/problems/roman-to-integer/) | [roman_to_int.dart](src/roman_to_integer.dart) | Easy | Hash Table, Math, String |
| [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/) | [letter_combinations.dart](src/letter_combinations_of_phone_number.dart) | Medium | Backtracking, String |
| [36. Valid Sudoku](https://leetcode.com/problems/valid-sudoku/) | [valid_sudoku.dart](src/valid_sudoku.dart) | Medium | Array, Hash Set, Matrix |
| [70. Climbing Stairs](https://leetcode.com/problems/climbing-stairs/) | [climbing_stairs.dart](src/dynamic_programming/climbing_stairs.dart) | Easy | Dynamic Programming |
| [121. Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/) | [buy_sell_stock.dart](src/two_pointers/best_time_to_buy_and_sell_stocks.dart) | Easy | Two Pointers, DP |
| [122. Best Time to Buy and Sell Stock II](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/) | [buy_sell_stock2.dart](src/arrays/best_time_to_buy_and_sell_stock_2.dart) | Medium | Arrays, Greedy |
| [300. Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/) | [lis.dart](src/dynamic_programming/longest_increasing_subsequences.dart) | Medium | Dynamic Programming |
| [309. Best Time to Buy and Sell Stock with Cooldown](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/) | [buy_sell_cooldown.dart](src/dynamic_programming/best_time_to_buy_and_sell_stock_with_cooldown.dart) | Medium | Dynamic Programming |
| [347. Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/) | [top_k_frequent.dart](src/top_k_frequent_elements.dart) | Medium | Hash Table, Heap |
| [647. Palindromic Substrings](https://leetcode.com/problems/palindromic-substrings/) | [palindromic_substr.dart](src/dynamic_programming/palindromic_substrings.dart) | Medium | Dynamic Programming, String |
| [695. Max Area of Island](https://leetcode.com/problems/max-area-of-island/) | [max_area_island.dart](src/dfs/maimum_area_of_islands.dart) | Medium | DFS, Matrix |
| [746. Min Cost Climbing Stairs](https://leetcode.com/problems/min-cost-climbing-stairs/) | [min_cost_stairs.dart](src/dynamic_programming/min_costs_climbing_stairs.dart) | Easy | Dynamic Programming |
| [5. Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring/) | [longest_palindrome.dart](src/dynamic_programming/longest_palindrome.dart) | Medium | Dynamic Programming, String |
| [62. Unique Paths](https://leetcode.com/problems/unique-paths/) | [unique_paths.dart](src/dynamic_programming/unique_path.dart) | Medium | Dynamic Programming |