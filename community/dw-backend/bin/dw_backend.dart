import 'package:shelf/shelf.dart';

import 'api/blog_api.dart';
import 'api/login_api.dart';
import 'infra/custom_server.dart';
import 'utils/custom_env.dart';

Future<void> main(List<String> arguments) async {
  CustomEnv.fromFile('.env-dev');

  var cascadeHandler = Cascade().add(LoginApi().handler).add(BlogApi().handler);

  var handler = Pipeline()
      .addMiddleware(logRequests())
      .addHandler(cascadeHandler.handler);

  CustomServer().initialize(
    handler: handler,
    address: await CustomEnv.get<String>(key: 'server_address'),
    port: await CustomEnv.get<int>(key: 'server_port'),
  );
}
