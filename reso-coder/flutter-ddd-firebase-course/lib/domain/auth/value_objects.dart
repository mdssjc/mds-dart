import 'package:dartz/dartz.dart';

import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-ddd-firebase-course/lib/domain/core/failures.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-ddd-firebase-course/lib/domain/core/value_objects.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-ddd-firebase-course/lib/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
