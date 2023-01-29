for easy implements [domain primitive](https://freecontent.manning.com/domain-primitives-what-they-are-and-how-you-can-use-them-to-make-more-secure-software/)

on Dart Primitive Types (int, double, String...)

## Features

* You can define more TypeSafe Primitive Type.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to [`/example`](./example/dart_primitive_type_wrapper_example.dart) folder. 

```dart
class Price extends TaggedPositiveInt with TaggedPositiveIntSubtraction {
  Price(super.value);

  @override
  Price newInstance(int n) => Price(n);
}

main() {
  final price300 = Price(100) + Price(200);
}
```

## Additional information

this is hobby library.

Dart [Static Metaprogramming](https://github.com/dart-lang/language/issues/1482) maybe introduce me more cool solution.