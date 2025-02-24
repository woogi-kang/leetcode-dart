# LeetCode Solutions in Dart

This repository contains solutions to LeetCode problems implemented in Dart, with a focus on clean code, performance tracking, and comprehensive documentation.

## 🚀 Getting Started

### Prerequisites
- Dart SDK >=3.1.0
- Git

### Setup
1. Clone the repository

```bash
git clone https://github.com/yourusername/leetcode-dart.git
cd leetcode-dart
```

2. Install dependencies

```bash
dart pub get
```

3. Run a solution with performance metrics

```bash
dart run src/two_sum.dart --enable-vm-service
```


### Adding New Solutions

1. Create a new file in the appropriate category folder:

```bash
mkdir -p src/category_name
touch src/category_name/problem_name.dart
```

2. Use the standard header template:

```dart
/ ==========================================
Problem Number. Problem Name
==========================================
Category: Your Categories
Difficulty: Easy/Medium/Hard
Problem Description
==========================================
Copy the problem description here...
Examples
==========================================
Example 1:
Input: ...
Output: ...
Constraints
==========================================
List constraints...
Approach
==========================================
Explain your approach...
Time Complexity: O(...)
Space Complexity: O(...)
/
```

3. Implement your solution with the Utils class:

```dart
import '../utils.dart';

class Solution {
// Your solution here
}

void main() {
    final solution = Solution();
    
    Utils.runTimer('Problem Name', () {
        return solution.methodName(input);
    });
}
```


## 📊 Performance Tracking

The `Utils` class provides performance metrics for each solution:
- Execution time
- Memory usage
- Result validation

Run solutions with the VM service flag to get memory metrics:

```bash
dart run src/your_solution.dart --enable-vm-service
```

## 🗂️ Project Structure

```
leetcode-dart/
├── src/                # Solutions by category
│   ├── arrays/        # Array-based problems
│   ├── bfs/           # Breadth-First Search
│   ├── dfs/           # Depth-First Search
│   ├── dp/            # Dynamic Programming
│   ├── sliding_window/# Sliding Window
│   ├── two_pointers/  # Two Pointers
│   └── utils.dart     # Performance tracking utilities
├── test/              # Test cases (coming soon)
└── README.md          # Documentation
```


## 📝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingSolution`)
3. Commit your changes (`git commit -m 'Add solution for Problem X'`)
4. Push to the branch (`git push origin feature/AmazingSolution`)
5. Open a Pull Request

## 🔍 Solutions Index

| Problem | File | Difficulty | Tags |
|---------|------|------------|------|
| [1. Two Sum](https://leetcode.com/problems/two-sum/) | [two_sum.dart](src/two_sum.dart) | Easy | Hash Table, Array |
| [3. Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/) | [longest_substring.dart](src/sliding_window/longest_substring_without_repeating_characters.dart) | Medium | Sliding Window, Hash Set |
| [5. Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring/) | [longest_palindrome.dart](src/dynamic_programming/longest_palindrome.dart) | Medium | Dynamic Programming, String |
| [11. Container With Most Water](https://leetcode.com/problems/container-with-most-water/) | [container_water.dart](src/two_pointers/container_with_most_water.dart) | Medium | Two Pointers, Array |
| [13. Roman to Integer](https://leetcode.com/problems/roman-to-integer/) | [roman_to_int.dart](src/roman_to_integer.dart) | Easy | Hash Table, Math, String |
| [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/) | [letter_combinations.dart](src/letter_combinations_of_phone_number.dart) | Medium | Backtracking, String |
| [36. Valid Sudoku](https://leetcode.com/problems/valid-sudoku/) | [valid_sudoku.dart](src/valid_sudoku.dart) | Medium | Array, Hash Set, Matrix |
| [62. Unique Paths](https://leetcode.com/problems/unique-paths/) | [unique_paths.dart](src/dynamic_programming/unique_path.dart) | Medium | Dynamic Programming |
| [70. Climbing Stairs](https://leetcode.com/problems/climbing-stairs/) | [climbing_stairs.dart](src/dynamic_programming/climbing_stairs.dart) | Easy | Dynamic Programming |
| [121. Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/) | [buy_sell_stock.dart](src/two_pointers/best_time_to_buy_and_sell_stocks.dart) | Easy | Two Pointers, DP |
| [122. Best Time to Buy and Sell Stock II](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/) | [buy_sell_stock2.dart](src/arrays/best_time_to_buy_and_sell_stock_2.dart) | Medium | Arrays, Greedy |
| [300. Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/) | [lis.dart](src/dynamic_programming/longest_increasing_subsequences.dart) | Medium | Dynamic Programming |
| [309. Best Time to Buy and Sell Stock with Cooldown](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/) | [buy_sell_cooldown.dart](src/dynamic_programming/best_time_to_buy_and_sell_stock_with_cooldown.dart) | Medium | Dynamic Programming |
| [322. Coin Change](https://leetcode.com/problems/coin-change/) | [coin_change.dart](src/dynamic_programming/coin_change.dart) | Medium | Dynamic Programming |
| [347. Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/) | [top_k_frequent.dart](src/top_k_frequent_elements.dart) | Medium | Hash Table, Heap |
| [647. Palindromic Substrings](https://leetcode.com/problems/palindromic-substrings/) | [palindromic_substr.dart](src/dynamic_programming/palindromic_substrings.dart) | Medium | Dynamic Programming, String |
| [695. Max Area of Island](https://leetcode.com/problems/max-area-of-island/) | [max_area_island.dart](src/dfs/maximum_area_of_islands.dart) | Medium | DFS, Matrix |
| [746. Min Cost Climbing Stairs](https://leetcode.com/problems/min-cost-climbing-stairs/) | [min_cost_stairs.dart](src/dynamic_programming/min_costs_climbing_stairs.dart) | Easy | Dynamic Programming |
| [994. Rotting Oranges](https://leetcode.com/problems/rotting-oranges/) | [rotten_oranges.dart](src/bfs/rotten_oranges.dart) | Medium | BFS, Matrix |

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.