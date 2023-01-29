import 'package:meta/meta.dart';

/// Primitiveな値のValueObjectです。
abstract class _PrimitiveValueObject<T> {
  const _PrimitiveValueObject._(this._value);

  final T _value;

  @protected
  T get value => _value;

  @override
  String toString() => _value.toString();

  @override
  bool operator ==(Object other) {
    if (other is _PrimitiveValueObject && runtimeType == other.runtimeType) {
      return _value == other._value;
    }

    return _value == other;
  }

  @override
  int get hashCode => _value.hashCode;
}

/// タグ付け可能な文字列です。
abstract class TaggedString<F> extends _PrimitiveValueObject<String> {
  /// Constructor
  const TaggedString(String value) : super._(value);

  String toJson() => _value;
}

abstract class _TaggedNumber<C, N extends num>
    implements _PrimitiveValueObject<N> {
  C newInstance(N n);
}

///
mixin _TaggedNumberBasicOps<C, N extends num> implements _TaggedNumber<C, N> {
  /// 数同士の加算をします。
  C operator +(_TaggedNumber<C, N> number) {
    return newInstance((value + number.value) as N);
  }

  /// 数の乗算をします。
  C operator *(int n) {
    return newInstance((value * n) as N);
  }

  num toJson() => _value;

  @override
  String toString() => value.toString();

  N get toNumber => _value;
}

mixin _TaggedNumberSubtraction<C, N extends num> implements _TaggedNumber<C, N> {
  /// 数同士の減算をします。
  C operator -(_TaggedNumber<C, N> number) {
    return newInstance((value - number.value) as N);
  }
}


/// ジェネリクスによってタグ付け可能な整数です。
abstract class TaggedDouble<C> extends _PrimitiveValueObject<double>
    with _TaggedNumberBasicOps<C, double>, _TaggedNumberSubtraction<C, double>
    implements _TaggedNumber<C, double> {
  @override
  C newInstance(double d);

  /// コンストラクタです。
  const TaggedDouble(double value) : super._(value);
}

/// タグ付け可能な整数です。
abstract class TaggedInt<C> extends _PrimitiveValueObject<int>
    with _TaggedNumberBasicOps<C, int>,  _TaggedNumberSubtraction<C, int>
    implements _TaggedNumber<C, int> {
  @override
  C newInstance(int d);

  /// コンストラクタです。
  const TaggedInt(int value) : super._(value);
}

/// タグ付け可能な正の整数です。
abstract class TaggedPositiveInt<C> extends _PrimitiveValueObject<int>
    with _TaggedNumberBasicOps<C, int>
    implements _TaggedNumber<C, int> {
  /// コンストラクタです。
  TaggedPositiveInt(int value)
      : super._(
    value,
  ) {
    if (value < 0) throw ArgumentError('TaggedPositiveInt#value should be greeter than equal 0');
  }
}


