import 'package:flutter_modular/flutter_modular.dart';

import 'chat_controller.dart';
import 'chat_page.dart';
import 'repositories/chat_repository.dart';

class ChatModule extends Module {
  @override
  final List<Bind> binds = [
    $ChatController,
    $ChatRepository,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ChatPage()),
  ];
}
