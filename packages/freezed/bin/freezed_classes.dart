import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_classes.freezed.dart';
part 'freezed_classes.g.dart';

@freezed
abstract class User with _$User {
  const factory User(String name, {int? age}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class OperationNested with _$OperationNested {
  const factory OperationNested.add(int value) = _Add;
  const factory OperationNested.subtract(int value) = _Subtract;
}

@freezed
abstract class OperationNonNested with _$OperationNonNested {
  const factory OperationNonNested.add(int value) = Add;
  const factory OperationNonNested.subtract(int value) = Subtract;
}