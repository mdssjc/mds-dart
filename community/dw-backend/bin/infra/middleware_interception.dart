import 'package:shelf/shelf.dart';

class MiddlewareInterception {
  Middleware get middleware {
    return createMiddleware(responseHandler: (Response resp) {
      return resp.change(headers: {
        'content-type': 'application/json',
      });
    });
  }
}
