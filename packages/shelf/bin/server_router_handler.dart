import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServerRouterHandler {
  Handler get handler {
    final router = Router();

    router.get('/', (Request req) {
      return Response(
        200,
        body: '<h1>Primeira Rota!</h1>',
        headers: {
          'content-type': 'text/html',
        },
      );
    });

    router.get('/ola/mundo/<user>', (Request request, String user) {
      return Response.ok('Ola Mundo! $user');
    });

    router.get('/query', (Request req) {
      String? name = req.url.queryParameters['name'];
      String? age = req.url.queryParameters['age'];
      return Response.ok('Query is: $name, age: $age');
    });

    router.post('/login', (Request req) async {
      var result = await req.readAsString();
      var json = jsonDecode(result);

      var username = json['username'];
      var password = json['password'];

      if (username == 'admin' && password == '123') {
        var jsonResponse = jsonEncode({
          'token': 'token123',
          'user_id': 1,
        });

        return Response.ok(
          jsonResponse,
          headers: {
            'content-type': 'application/json',
          },
        );
      }
      return Response.forbidden('Forbidden');
    });

    return router;
  }
}
