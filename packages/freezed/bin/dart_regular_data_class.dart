import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class User {
  final String name;
  final int? age;

  const User(this.name, {this.age});

  User copyWith(
    String name, {
    int? age,
  }) {
    return User(name, age: age);
  }

  fromJson(Map<String, dynamic> json) => User(
        json['name'] as String,
        age: json['age'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is User && other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
