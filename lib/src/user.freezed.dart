// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserId id, String name) registered,
    required TResult Function(String name) temporary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserId id, String name)? registered,
    TResult? Function(String name)? temporary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserId id, String name)? registered,
    TResult Function(String name)? temporary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Registered value) registered,
    required TResult Function(Temporary value) temporary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Registered value)? registered,
    TResult? Function(Temporary value)? temporary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Registered value)? registered,
    TResult Function(Temporary value)? temporary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisteredCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$RegisteredCopyWith(
          _$Registered value, $Res Function(_$Registered) then) =
      __$$RegisteredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserId id, String name});
}

/// @nodoc
class __$$RegisteredCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$Registered>
    implements _$$RegisteredCopyWith<$Res> {
  __$$RegisteredCopyWithImpl(
      _$Registered _value, $Res Function(_$Registered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$Registered(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@visibleForTesting
class _$Registered extends Registered with _RegisteredUserBehavior {
  _$Registered({required this.id, required this.name}) : super._();

  @override
  final UserId id;
  @override
  final String name;

  @override
  String toString() {
    return 'User.registered(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Registered &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredCopyWith<_$Registered> get copyWith =>
      __$$RegisteredCopyWithImpl<_$Registered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserId id, String name) registered,
    required TResult Function(String name) temporary,
  }) {
    return registered(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserId id, String name)? registered,
    TResult? Function(String name)? temporary,
  }) {
    return registered?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserId id, String name)? registered,
    TResult Function(String name)? temporary,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Registered value) registered,
    required TResult Function(Temporary value) temporary,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Registered value)? registered,
    TResult? Function(Temporary value)? temporary,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Registered value)? registered,
    TResult Function(Temporary value)? temporary,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class Registered extends User implements _RegisteredUserBehavior {
  factory Registered({required final UserId id, required final String name}) =
      _$Registered;
  Registered._() : super._();

  UserId get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$RegisteredCopyWith<_$Registered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TemporaryCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$TemporaryCopyWith(
          _$Temporary value, $Res Function(_$Temporary) then) =
      __$$TemporaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$TemporaryCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$Temporary>
    implements _$$TemporaryCopyWith<$Res> {
  __$$TemporaryCopyWithImpl(
      _$Temporary _value, $Res Function(_$Temporary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$Temporary(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Temporary extends Temporary with _TemporaryUserBehavior {
  _$Temporary({required this.name}) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'User.temporary(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Temporary &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemporaryCopyWith<_$Temporary> get copyWith =>
      __$$TemporaryCopyWithImpl<_$Temporary>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserId id, String name) registered,
    required TResult Function(String name) temporary,
  }) {
    return temporary(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserId id, String name)? registered,
    TResult? Function(String name)? temporary,
  }) {
    return temporary?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserId id, String name)? registered,
    TResult Function(String name)? temporary,
    required TResult orElse(),
  }) {
    if (temporary != null) {
      return temporary(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Registered value) registered,
    required TResult Function(Temporary value) temporary,
  }) {
    return temporary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Registered value)? registered,
    TResult? Function(Temporary value)? temporary,
  }) {
    return temporary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Registered value)? registered,
    TResult Function(Temporary value)? temporary,
    required TResult orElse(),
  }) {
    if (temporary != null) {
      return temporary(this);
    }
    return orElse();
  }
}

abstract class Temporary extends User implements _TemporaryUserBehavior {
  factory Temporary({required final String name}) = _$Temporary;
  Temporary._() : super._();

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TemporaryCopyWith<_$Temporary> get copyWith =>
      throw _privateConstructorUsedError;
}
