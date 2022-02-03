# Command Line Cheat Sheet

## Show visited directories

```console
dirs -v
```

## Flutter specific

Update golden tests in main project and its packages

```console
flutter test --update-goldens && flutter test ./packages/feature/test/ --update-goldens
```

Generate test coverage report

```console
fvm flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```
