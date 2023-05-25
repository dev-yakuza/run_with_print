// ignore_for_file: avoid_print

import 'dart:io';

import 'package:run_with_print/run_with_print.dart';

void main() {
  runWithPrint((logs) {
    print('test log');
    print('test message');
    stdout.writeln('print logs length: ${logs.length}');
    stdout.writeln(logs);
  });
}
