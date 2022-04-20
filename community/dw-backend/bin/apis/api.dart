import 'package:shelf/shelf.dart';

abstract class Api {
  Handler getHandler({List<Middleware>? middlewares});
  Handler createHandler({
    required Handler router,
    List<Middleware>? middlewares,
  }) {
    middlewares ??= [];
    var pipeline = Pipeline();

    middlewares.forEach((middleware) {
      pipeline = pipeline.addMiddleware(middleware);
    });

    return pipeline.addHandler(router);
  }
}
