import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../infra/security/security_service.dart';
import 'api.dart';

class LoginApi extends Api {
  final SecurityService _securityService;

  LoginApi(this._securityService);

  @override
  Handler getHandler({List<Middleware>? middlewares, isSecurity = false}) {
    Router router = Router();

    router.post('/login', (Request req) async {
      var token = await _securityService.generateJWT('1');
      var result = await _securityService.validateJWT(token);
      print(token);

      return Response.ok((result != null).toString());
    });

    return createHandler(
      router: router,
      middlewares: middlewares,
    );
  }
}
