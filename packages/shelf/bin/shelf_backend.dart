import 'package:shelf/shelf_io.dart' as shelf_io;

import 'server_router_handler.dart';

Future<void> main() async {
  var _server = ServerRouterHandler();

  final server = await shelf_io.serve(_server.handler, 'localhost', 8080);
  print('Server started');
}
