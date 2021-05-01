

class User {
  final String userId;
  final String userName;

  User(this.userId, this.userName);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          userName == other.userName;

  @override
  int get hashCode => userName.hashCode;
}
