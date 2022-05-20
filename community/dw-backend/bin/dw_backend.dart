import 'package:shelf/shelf.dart';

import 'apis/blog_api.dart';
import 'apis/login_api.dart';
import 'dao/user_dao.dart';
import 'infra/custom_server.dart';
import 'infra/database/db_configuration.dart';
import 'infra/dependency_injector/injects.dart';
import 'infra/middleware_interception.dart';
import 'models/user_model.dart';
import 'utils/custom_env.dart';

void main() async {
  CustomEnv.fromFile('.env-dev');

  final _di = Injects.initialize();
  UserDao dao = UserDao(_di<DbConfiguration>());

  var user = UserModel()
    ..id = 10
    ..name = 'John'
    ..email = 'john@gmail.com'
    ..password = '123';

  dao.create(user);
  dao.findAll().then(print);
  dao.findAll().then(print);

  var cascadeHandler = Cascade()
      .add(_di.get<LoginApi>().getHandler())
      .add(_di.get<BlogApi>().getHandler(isSecurity: true))
      .handler;

  var handler = Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(MiddlewareInterception().middleware)
      .addHandler(cascadeHandler);

  CustomServer().initialize(
    handler: handler,
    address: await CustomEnv.get<String>(key: 'server_address'),
    port: await CustomEnv.get<int>(key: 'server_port'),
  );
}
