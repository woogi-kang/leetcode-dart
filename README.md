# LeetCode Solutions in Dart

This repository contains my solutions to LeetCode problems implemented in Dart.

## Project Structure

```leetcode-dart/
├── src/ # Solutions to LeetCode problems
│ └── two_sum.dart
├── utils.dart # Utility functions (timing, memory tracking)
├── pubspec.yaml # Dart project configuration
└── README.md
```

## Prerequisites

- Dart SDK >=2.12.0

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

Each solution can be run directly using the Dart CLI:

```bash
dart run src/two_sum.dart
```

The output will show:
- Problem name
- Solution result
- Time consumed (in microseconds)
- Memory usage (approximate)

## Example Output

[Problem] Two Sum
Result: [0, 1]
Time consumed: 52 μs

[Problem] Two Sum - Large Input
Result: [9999, 9998]
Time consumed: 2351 μs


## Solutions

| Problem | Solution | Difficulty |
|---------|----------|------------|
| [1. Two Sum](https://leetcode.com/problems/two-sum/) | [src/two_sum.dart](src/two_sum.dart) | Easy |

## Contributing

Feel free to open issues or submit pull requests if you have better solutions or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.