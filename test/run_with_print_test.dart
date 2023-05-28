// ignore_for_file: avoid_print

import 'package:run_with_print/run_with_print.dart';
import 'package:test/test.dart';

void main() {
  test('Check print contents', () {
    runWithPrint((logs) {
      print('test log');
      expect(logs[0], 'test log');

      print('test message');
      expect(logs[1], 'test message');
    });
  });

  test('Check print contents with async', () async {
    await runWithPrint((logs) async {
      print('test log');
      await Future.delayed(const Duration());
      expect(logs[0], 'test log');

      print('test message');
      await Future.delayed(const Duration());
      expect(logs[1], 'test message');
    });
  });

  test('Check print contents with debug option', () {
    runWithPrint((logs) {
      print('test log');
      expect(logs[0], 'test log');

      print('test message');
      expect(logs[1], 'test message');
    }, debug: true);
  });
}
