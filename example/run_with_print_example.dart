// ignore_for_file: avoid_print

import 'dart:io';

import 'package:run_with_print/run_with_print.dart';

void main() async {
  runWithPrint((logs) {
    print('test log');
    print('test message');
    stdout.writeln('print logs length: ${logs.length}');
    stdout.writeln(logs);
  });

  await runWithPrint((logs) async {
    print('test log');
    await Future.delayed(const Duration());
    print('test message');
    await Future.delayed(const Duration());
    stdout.writeln('print logs length: ${logs.length}');
    stdout.writeln(logs);
  });
}
