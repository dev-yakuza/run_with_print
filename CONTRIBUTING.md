# Welcome to run_with_print contributing guide

Thank you for your interest in contributing to run_with_print! There are a few things you need to know to contribute.

## Lefthook

This project uses `Lefthook` to use Git hooks.

- Lefthook: [https://github.com/evilmartians/lefthook](https://github.com/evilmartians/lefthook)

So, If you want to contribute to this project, please install it to refer to the following link.

- Install lefthook: [https://github.com/evilmartians/lefthook/blob/master/docs/install.md](https://github.com/evilmartians/lefthook/blob/master/docs/install.md)

And then, execute the following command to configure Git hooks.

```bash
lefthook install
# npx lefthook install
```

This Git hooks will run `dart format`, `lint(flutter analyze)`, and `flutter test`.

## Develop

The main code is `lib/src/run_with_print_base.dart`. So, if you have any good idea or code, please modify it.

The `test/run_with_print_test.dart` file is the test file of the package. So, if you have any changes of the code, please add the test code about it in here.

## Commit message

Please add one of the following commit type to the commit message.

- `fix:`: In case of bug fixed.
- `feat:`: In case of feature added.
- `build:`: In case of build system or dependencies changed.
- `chore:`: In case of build system or dependencies changed.
- `ci:`: In case of CI configuration or scripts changed.
- `docs:`: In case of only documentation changed.
- `style:`: In case of code style(space, formatting, colons, etc) changed.
- `refactor:`: In case of refactoring code not fixing bugs or adding features.
- `pref:`: In case of modifying code for improving performance.
- `test:`: In case of adding test code or modifying existing test code.
