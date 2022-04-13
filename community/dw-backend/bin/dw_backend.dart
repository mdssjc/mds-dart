import 'package:shelf/shelf.dart';

import 'apis/blog_api.dart';
import 'apis/login_api.dart';
import 'infra/custom_server.dart';
import 'infra/middleware_interception.dart';
import 'infra/security/security_service_impl.dart';
import 'services/news_service.dart';
import 'utils/custom_env.dart';

Future<void> main(List<String> arguments) async {
  CustomEnv.fromFile('.env-dev');

  var cascadeHandler = Cascade()
      .add(LoginApi(SecurityServiceImpl()).handler)
      .add(BlogApi(NewsService()).handler);

  var handler = Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(MiddlewareInterception().middleware)
      .addHandler(cascadeHandler.handler);

  CustomServer().initialize(
    handler: handler,
    address: await CustomEnv.get<String>(key: 'server_address'),
    port: await CustomEnv.get<int>(key: 'server_port'),
  );
}
