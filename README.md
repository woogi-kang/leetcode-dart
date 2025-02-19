# LeetCode Solutions in Dart

This repository contains my solutions to LeetCode problems implemented in Dart.

## Project Structure

```
leetcode-dart/
├── src/               # Solutions to LeetCode problems
│   ├── two_sum.dart
│   ├── roman_to_integer.dart
│   ├── longest_substring_without_repeating_characters.dart
│   ├── letter_combinations_of_phone_number.dart
│   ├── valid_sudoku.dart
│   └── utils.dart     # Utility functions (timing, memory tracking)
├── pubspec.yaml       # Dart project configuration
└── README.md
```

## Prerequisites

- Dart SDK >=2.14.0
- Git (optional, for cloning)

## Setup

1. Clone the repository (or download ZIP):
   ```bash
   git clone https://github.com/YOUR_USERNAME/leetcode-dart.git
   cd leetcode-dart
   ```

2. Install dependencies:
   ```bash
   dart pub get
   ```

## Running Solutions

Each solution can be run with the VM service enabled for memory tracking:

```bash
dart --enable-vm-service run src/two_sum.dart
```

The output will show:
- Problem name
- Solution result
- Time consumed (in milliseconds)
- Memory impact (heap usage)

## Example Output

```
[Problem] Two Sum
Result: [0, 1]
Time consumed: 1 ms
Memory Impact: 15.2 MB

[Problem] Two Sum - Large Input
Result: [9999, 9998]
Time consumed: 235 ms
Memory Impact: 24.5 MB
```

## Solutions

| Problem | Solution | Difficulty | Tags |
|---------|----------|------------|------|
| [1. Two Sum](https://leetcode.com/problems/two-sum/) | [src/two_sum.dart](src/two_sum.dart) | Easy | Hash Table, Array |
| [3. Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/) | [src/longest_substring_without_repeating_characters.dart](src/longest_substring_without_repeating_characters.dart) | Medium | Sliding Window, Hash Set |
| [13. Roman to Integer](https://leetcode.com/problems/roman-to-integer/) | [src/roman_to_integer.dart](src/roman_to_integer.dart) | Easy | Hash Table, Math, String |
| [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/) | [src/letter_combinations_of_phone_number.dart](src/letter_combinations_of_phone_number.dart) | Medium | Backtracking, String |
| [36. Valid Sudoku](https://leetcode.com/problems/valid-sudoku/) | [src/valid_sudoku.dart](src/valid_sudoku.dart) | Medium | Array, Hash Set, Matrix |

## Contributing

Feel free to open issues or submit pull requests if you have better solutions or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.