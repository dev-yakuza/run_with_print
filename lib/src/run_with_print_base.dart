import 'dart:async';
import 'dart:io';

R runWithPrint<R>(R Function(List<String> logs) testFn, {bool debug = false}) {
  List<String> logs = [];

  var spec = ZoneSpecification(print: (_, __, ___, String msg) {
    if (debug) stdout.writeln(msg);

    logs.add(msg);
  });

  final isAsync = testFn.runtimeType.toString().contains('Future');

  final callback = (isAsync
      ? () async {
          await (testFn(logs) as Future);
        }
      : () {
          testFn(logs);
        }) as R Function();

  return Zone.current.fork(specification: spec).run(callback);
}
