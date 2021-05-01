import 'package:flutter_modular/flutter_modular.dart';

import 'chat_controller.dart';
import 'chat_page.dart';
import 'repositories/chat_repository.dart';

class ChatModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ChatController,
        $ChatRepository,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ChatPage()),
      ];

  static Inject get to => Inject<ChatModule>.of();
}
