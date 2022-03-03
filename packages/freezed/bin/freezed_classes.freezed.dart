// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(String name, {int? age}) {
    return _User(
      name,
      age: age,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String name, int? age});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? age});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_User(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(this.name, {this.age});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String name;
  @override
  final int? age;

  @override
  String toString() {
    return 'User(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(String name, {int? age}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  int? get age;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$OperationNestedTearOff {
  const _$OperationNestedTearOff();

  _Add add(int value) {
    return _Add(
      value,
    );
  }

  _Subtract subtract(int value) {
    return _Subtract(
      value,
    );
  }
}

/// @nodoc
const $OperationNested = _$OperationNestedTearOff();

/// @nodoc
mixin _$OperationNested {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationNestedCopyWith<OperationNested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationNestedCopyWith<$Res> {
  factory $OperationNestedCopyWith(
          OperationNested value, $Res Function(OperationNested) then) =
      _$OperationNestedCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$OperationNestedCopyWithImpl<$Res>
    implements $OperationNestedCopyWith<$Res> {
  _$OperationNestedCopyWithImpl(this._value, this._then);

  final OperationNested _value;
  // ignore: unused_field
  final $Res Function(OperationNested) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AddCopyWith<$Res> implements $OperationNestedCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$OperationNestedCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Add(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'OperationNested.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Add &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$AddCopyWith<_Add> get copyWith =>
      __$AddCopyWithImpl<_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) {
    return add(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
  }) {
    return add?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements OperationNested {
  const factory _Add(int value) = _$_Add;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubtractCopyWith<$Res>
    implements $OperationNestedCopyWith<$Res> {
  factory _$SubtractCopyWith(_Subtract value, $Res Function(_Subtract) then) =
      __$SubtractCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$SubtractCopyWithImpl<$Res> extends _$OperationNestedCopyWithImpl<$Res>
    implements _$SubtractCopyWith<$Res> {
  __$SubtractCopyWithImpl(_Subtract _value, $Res Function(_Subtract) _then)
      : super(_value, (v) => _then(v as _Subtract));

  @override
  _Subtract get _value => super._value as _Subtract;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Subtract(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Subtract implements _Subtract {
  const _$_Subtract(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'OperationNested.subtract(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Subtract &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$SubtractCopyWith<_Subtract> get copyWith =>
      __$SubtractCopyWithImpl<_Subtract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) {
    return subtract(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
  }) {
    return subtract?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class _Subtract implements OperationNested {
  const factory _Subtract(int value) = _$_Subtract;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$SubtractCopyWith<_Subtract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OperationNonNestedTearOff {
  const _$OperationNonNestedTearOff();

  Add add(int value) {
    return Add(
      value,
    );
  }

  Subtract subtract(int value) {
    return Subtract(
      value,
    );
  }
}

/// @nodoc
const $OperationNonNested = _$OperationNonNestedTearOff();

/// @nodoc
mixin _$OperationNonNested {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationNonNestedCopyWith<OperationNonNested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationNonNestedCopyWith<$Res> {
  factory $OperationNonNestedCopyWith(
          OperationNonNested value, $Res Function(OperationNonNested) then) =
      _$OperationNonNestedCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$OperationNonNestedCopyWithImpl<$Res>
    implements $OperationNonNestedCopyWith<$Res> {
  _$OperationNonNestedCopyWithImpl(this._value, this._then);

  final OperationNonNested _value;
  // ignore: unused_field
  final $Res Function(OperationNonNested) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $AddCopyWith<$Res> implements $OperationNonNestedCopyWith<$Res> {
  factory $AddCopyWith(Add value, $Res Function(Add) then) =
      _$AddCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class _$AddCopyWithImpl<$Res> extends _$OperationNonNestedCopyWithImpl<$Res>
    implements $AddCopyWith<$Res> {
  _$AddCopyWithImpl(Add _value, $Res Function(Add) _then)
      : super(_value, (v) => _then(v as Add));

  @override
  Add get _value => super._value as Add;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(Add(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Add implements Add {
  const _$Add(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'OperationNonNested.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Add &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $AddCopyWith<Add> get copyWith => _$AddCopyWithImpl<Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) {
    return add(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
  }) {
    return add?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements OperationNonNested {
  const factory Add(int value) = _$Add;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  $AddCopyWith<Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtractCopyWith<$Res>
    implements $OperationNonNestedCopyWith<$Res> {
  factory $SubtractCopyWith(Subtract value, $Res Function(Subtract) then) =
      _$SubtractCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class _$SubtractCopyWithImpl<$Res>
    extends _$OperationNonNestedCopyWithImpl<$Res>
    implements $SubtractCopyWith<$Res> {
  _$SubtractCopyWithImpl(Subtract _value, $Res Function(Subtract) _then)
      : super(_value, (v) => _then(v as Subtract));

  @override
  Subtract get _value => super._value as Subtract;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(Subtract(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Subtract implements Subtract {
  const _$Subtract(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'OperationNonNested.subtract(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Subtract &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SubtractCopyWith<Subtract> get copyWith =>
      _$SubtractCopyWithImpl<Subtract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
    required TResult Function(int value) subtract,
  }) {
    return subtract(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
  }) {
    return subtract?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    TResult Function(int value)? subtract,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class Subtract implements OperationNonNested {
  const factory Subtract(int value) = _$Subtract;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  $SubtractCopyWith<Subtract> get copyWith =>
      throw _privateConstructorUsedError;
}
