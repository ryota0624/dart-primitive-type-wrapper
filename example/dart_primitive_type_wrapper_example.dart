import 'package:dart_primitive_type_wrapper/dart_primitive_type_wrapper.dart';

class Price extends TaggedPositiveInt with TaggedPositiveIntSubtraction {
  Price(super.value);

  @override
  Price newInstance(int n) => Price(n);
}

class HumanAge extends TaggedPositiveInt {
  HumanAge(super.value);

  @override
  HumanAge newInstance(int n) => HumanAge(n);

  static HumanAge born = HumanAge(0);

  HumanAge glowOld() => this + HumanAge(1);
}

class UserId extends TaggedString<UserId> {
  UserId(super.value);
}

mixin CardIdContext on TaggedString<CardId> {
  @override
  String toString() {
    return List.filled(value.length, '*').join();
  }
}

class CardId = TaggedString<CardId> with CardIdContext;


void main() {
  final price = Price(1) + Price(4);
  print('price: ${price.toNumber}'); // -> 5

  final subtractedPrice = price - Price(1);
  print('subtractedPrice: ${subtractedPrice.toNumber}'); // -> 4
  // runtime error. Price should be always positive Integer.
  // price - Price(100);

  final born = HumanAge.born;
  // compile error. HumanAge is not allowed subtraction.
  // age - HumanAge(1);
  final age1 = born.glowOld();
  print('age1: ${age1.toNumber}'); // -> 1

  // could not assign different type.
  // final CardId cardId = UserId('1');
  print('UserId: ${UserId('hello')}');
  print('CardId: ${CardId('sensitive_id')}');
}
