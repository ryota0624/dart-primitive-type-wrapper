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

  // --- HumanAge behaviors

  static HumanAge born = HumanAge(0);

  HumanAge glowOld() => this + HumanAge(1);
}

// Simple UseCase
class UserId extends TaggedString<UserId> {
  UserId(super.value);
}

class Card {
  final TaggedString<Card> id;

  static TaggedString<Card> cardId(String? pan) {
    return pan != null ? PANCardId(pan) : UUIDCardId('53b5257f-1392-4f35-9467-1ee8193008c5');
  }

  Card(String? pan) : id = cardId(pan);
}

// PAN(Personal Account Number)
mixin PANCardIdContext on TaggedString<Card> {
  @override
  String toString() {
    return List.filled(value.length, '*').join();
  }
}

class PANCardId = TaggedString<Card> with PANCardIdContext;

mixin UUIDCardIdContext on TaggedString<Card> {}

class UUIDCardId = TaggedString<Card> with UUIDCardIdContext;

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

  final uuidCard = Card(null);
  print('uuidCard.id: ${uuidCard.id}');

  final panCard = Card('xxxx-yyyy-zzzz-0000');
  print('panCard.id: ${panCard.id}');

}
