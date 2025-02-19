class Utils {
  static void runTimer(String problemName, Function operation) {
    final stopwatch = Stopwatch()..start();
    
    final result = operation();
    
    stopwatch.stop();
    print('\n[Problem] $problemName');
    print('Result: $result');
    print('Time consumed: ${stopwatch.elapsedMicroseconds} μs');
  }
} 