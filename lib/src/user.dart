// This file is "main.dart"
import 'package:dart_primitive_type_wrapper/dart_primitive_type_wrapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

class UserId extends TaggedString<UserId> {
  UserId(super.value);

  factory UserId.fromSignInCode(SignInCode code) {
    return UserId(code.value);
  }
}

abstract class AllowedPersistent {
  void save();
}

mixin _RegisteredUserBehavior implements AllowedPersistent {
  UserId get id;

  @override
  void save() {
    print('$id saved');
  }
}

class SignInCode extends TaggedString<SignInCode> {
  SignInCode(super.value);
}

mixin _TemporaryUserBehavior {
  SignInCode issueFirstSignInCode() {
    return SignInCode('xxxyyy');
  }
}

@freezed
class User with _$User {
  const User._();

  @visibleForTesting
  @With<_RegisteredUserBehavior>()
  factory User.registered({
    required UserId id,
    required String name,
  }) = Registered;

  static Registered register(Temporary user, SignInCode code) {
    return Registered(id: UserId.fromSignInCode(code), name: user.name);
  }

  @With<_TemporaryUserBehavior>()
  factory User.temporary({
    required String name,
  }) = Temporary;

  void hello() {
    print('hello my name is ${name}');
  }
}

void main() {
  final user = Temporary(name: 'tmp');
  final signInCode = user.issueFirstSignInCode();
  final registered = User.register(user, signInCode);
  registered.save();
}
