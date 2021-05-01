import 'package:chat_online/app/domain/message.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'chat_repository.g.dart';

@Injectable()
class ChatRepository extends Disposable {
  @override
  void dispose() {
    //dispose will be called automatically
  }

  DatabaseReference retrieveChatReference() {
    return FirebaseDatabase.instance.reference().child('chat');
  }

  createMessage(Message message) {
    retrieveChatReference().push().set(message.toMap());
  }

  removeMessage(Message message) {
    retrieveChatReference().child(message.id).remove();
  }
}
