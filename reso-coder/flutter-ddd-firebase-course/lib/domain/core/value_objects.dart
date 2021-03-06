import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
;
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-ddd-firebase-course/lib/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) {
      return true;
    }
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
