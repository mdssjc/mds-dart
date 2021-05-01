import 'package:chat_online/app/domain/message.dart';
import 'package:chat_online/app/domain/user.dart';
import 'package:chat_online/app/modules/chat/chat_module.dart';
import 'package:chat_online/app/modules/chat/repositories/chat_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../app_controller.dart';
import '../../app_module.dart';

part 'chat_controller.g.dart';

@Injectable()
class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {
  ChatRepository _repository = ChatModule.to.get<ChatRepository>();
  AppController _appController = AppModule.to.get<AppController>();

  TextEditingController messageTextController = TextEditingController(text: '');

  @observable
  List<Message> messages = ObservableList<Message>();

  User user() => _appController.user;

  @action
  _removeMessage(Message message) {
    messages.remove(message);
  }

  @action
  _addMessage(Message message) {
    messages.add(message);
  }

  initialize() {
    _listenMessages();
  }

  _listenMessages() {
    _repository.retrieveChatReference().onChildAdded.listen((event) {
      if (event.snapshot != null && event.snapshot.value != null) {
        _addMessage(
            Message.parserMap(event.snapshot.key, event.snapshot.value));
      }
    });

    _repository.retrieveChatReference().onChildRemoved.listen((event) {
      if (event.snapshot != null && event.snapshot.value != null) {
        _removeMessage(
            Message.parserMap(event.snapshot.key, event.snapshot.value));
      }
    });
  }

  sendMessage() {
    if (messageTextController.text.isNotEmpty) {
      var message =
          Message("0", user(), DateTime.now(), messageTextController.text);
      _repository.createMessage(message);
      messageTextController.clear();
    }
  }

  removeMessage(Message message) {
    _repository.removeMessage(message);
  }
}
