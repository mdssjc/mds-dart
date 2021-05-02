import 'package:chat_online/app/modules/chat/chat_module.dart';
import 'package:chat_online/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $AppController,
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/chat', module: ChatModule()),
  ];
}
