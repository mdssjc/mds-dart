import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/news_model.dart';
import '../services/generic_service.dart';
import 'api.dart';

class BlogApi extends Api {
  final GenericService<NewsModel> _service;

  BlogApi(this._service);

  @override
  Handler getHandler({List<Middleware>? middlewares, bool isSecurity = false}) {
    Router router = Router();

    router.get('/blog/news', (Request req) {
      var news = _service.findAll();
      return Response.ok(jsonEncode(news.map((e) => e.toMap()).toList()));
    });

    router.post('/blog/news', (Request req) async {
      var body = await req.readAsString();
      _service.save(NewsModel.fromJson(body));
      return Response.ok('Today');
    });

    router.put('/blog/news', (Request req) {
      String? id = req.url.queryParameters['id'];
      return Response.ok('Today');
    });

    router.delete('/blog/news', (Request req) {
      String? id = req.url.queryParameters['id'];
      _service.delete(1);
      return Response.ok('Today');
    });

    return createHandler(router: router, middlewares: middlewares);
  }
}
