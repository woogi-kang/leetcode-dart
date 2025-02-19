import 'dart:io';
import 'dart:developer' as developer;
import 'package:intl/intl.dart';
import 'package:vm_service/vm_service.dart' show MemoryUsage, VM, VmService;
import 'package:vm_service/vm_service_io.dart' show vmServiceConnectUri;

class Utils {
  static Future<void> runTimer(String problemName, Function operation) async {
    final stopwatch = Stopwatch()..start();
    final result = operation();
    stopwatch.stop();

    String memoryUsage;
    try {
      memoryUsage = await printHeapUsage();
    } catch (e) {
      memoryUsage = "N/A (Run with --enable-vm-service)";
    }
    
    print('\n[Problem] $problemName');
    print('Result: $result');
    print('Time consumed: ${stopwatch.elapsedMicroseconds} μs');
    print('Memory Impact: $memoryUsage');
  }

  static Future<String> printHeapUsage() async {
    try {
      MemoryUsage mem = await getMemoryUsage();
      return '${NumberFormat.compact().format(mem.heapUsage)} MB';
    } catch (e) {
      rethrow;
    }
  }

  static Future<MemoryUsage> getMemoryUsage() async {
    final info = await developer.Service.getInfo();
    if (info.serverUri == null) {
      throw Exception('VM Service not enabled. Run with --enable-vm-service');
    }
    
    final service = await vmServiceConnectUri(info.serverWebSocketUri!.toString());
    try {
      final vm = await service.getVM();
      final isolateId = vm.isolates?.first.id;
      if (isolateId == null) {
        return MemoryUsage(externalUsage: 0, heapCapacity: 0, heapUsage: 0);
      }
      return await service.getMemoryUsage(isolateId);
    } finally {
      service.dispose();
    }
  }
}
