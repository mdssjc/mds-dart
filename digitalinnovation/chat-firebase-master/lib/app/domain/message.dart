import 'package:chat_online/app/domain/user.dart';

class Message {
  final String id;
  final User user;
  final DateTime sendDate;
  final String message;

  Message(this.id, this.user, this.sendDate, this.message);

  Message.parserMap(String id, Map<dynamic, dynamic> map)
      : id = id,
        sendDate = DateTime.parse(map['sendDate']),
        message = map['message'],
        user = User(map['userId'], map['userName']);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sendDate': sendDate.toString(),
      'message': message,
      'userId': user.userId,
      'userName': user.userName,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Message && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
