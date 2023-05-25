import 'dart:async';

void runWithPrint(void Function(List<String> logs) testFn) {
  List<String> logs = [];

  var spec = ZoneSpecification(print: (_, __, ___, String msg) {
    logs.add(msg);
  });

  void callback() {
    testFn(logs);
  }

  return Zone.current.fork(specification: spec).run<void>(callback);
}
