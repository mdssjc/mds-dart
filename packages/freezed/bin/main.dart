import 'dart_regular_data_class.dart' as regular;
import 'freezed_classes.dart';

void main() {
  const user = User('Matt', age: 20);
  final user2 = user.copyWith(name: 'John');

  const regularUser = regular.User('Matt', age: 20);
  final regularUser2 = regularUser.copyWith('Matt');

  print(user);
  print(user2);

  print(regularUser);
  print(regularUser2);

  const sameValueUser1 = User('abc', age: 123);
  const sameValueUser2 = User('abc', age: 123);

  const sameValueRegularUser1 = regular.User('abc', age: 123);
  const sameValueRegularUser2 = regular.User('abc', age: 123);

  print(sameValueUser1 == sameValueUser2);
  print(sameValueRegularUser1 == sameValueRegularUser2);

  final Map<String, dynamic> serialized = user.toJson();
  final User deserialized = User.fromJson(serialized);
  print(deserialized);

  final Map<String, dynamic> serializedRegular = regularUser.toJson();
  final User deserializedRegular = User.fromJson(serializedRegular);
  print(deserializedRegular);
}
