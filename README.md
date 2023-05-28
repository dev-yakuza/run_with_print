# run_with_print

A helper for getting the `print` output in tests.

## Introduction

Sometimes, you want to check the `print` output when you test the app or test Command Line Interface.

This package returns the `print` output to help you to check it in the test code.

## Installing

You can install this package by executing the following command.

```bash
dart pub add --dev run_with_print
```

Or, open the `pubspec.yaml` file and add the `run_with_print` package to dev_dependencies as follows.

```yaml
...
dev_dependencies:
  run_with_print: [version]
...
```

## Usage

You can use the `runWithPrint` function to get the `print` output. A full test example could look like the following.

```dart
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
}
```

You can just wrap the test code with `runWithPrint(() {});` to get the `print` output.

### Asynchronous test

You can also use the `runWithPrint` function in asynchronous test.

```dart
import 'package:run_with_print/run_with_print.dart';
import 'package:test/test.dart';

void main() {
  test('Check print contents', await () {
    await runWithPrint((logs) async {
      print('test log');
      await Future.delayed(const Duration());
      expect(logs[0], 'test log');

      print('test message');
      await Future.delayed(const Duration());
      expect(logs[1], 'test message');
    });
  });
}
```

### debug option

When you use the `print` function in `runWithPrint`, you can't see the log on the console. If you want to see the log on the console, please use the `debug` option like the following.

```dart
test('Check print contents', () {
  runWithPrint((logs) s{
    ...
  }, debug: true);
});
```

## Contributing

If you want to contribute to this package, please see [CONTRIBUTING](CONTRIBUTING.md).
