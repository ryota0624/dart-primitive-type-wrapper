import 'dart:math';

import '../dart_primitive_type_wrapper.dart';

/// mixinすることでTaggedPositiveIntのサブクラスで減算が可能になります。
mixin TaggedPositiveIntSubtraction<C> on TaggedPositiveInt<C> {
  /// 数同士の減算をします。
  C operator -(TaggedPositiveInt<C> number) {
    return newInstance((value - number.value));
  }

  /// TaggedPositiveIntの数値が0を下回らないように減算を行います。
  C safeSubtract(TaggedPositiveInt<C> number) {
    return newInstance(max(value - number.value, 0));
  }
}