import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServerRouterHandler {
  Handler get handler {
    final router = Router();

    router.get('/', (Request req) {
      return Response.ok('Primeira Rota!');
    });

    router.get('/ola/mundo/<user>', (Request request, String user) {
      return Response.ok('Ola Mundo! $user');
    });

    router.get('/query', (Request req) {
      String? name = req.url.queryParameters['name'];
      String? age = req.url.queryParameters['age'];
      return Response.ok('Query is: $name, age: $age');
    });

    return router;
  }
}
