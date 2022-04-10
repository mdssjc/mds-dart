import '../models/news_model.dart';
import '../utils/list_extension.dart';
import 'generic_service.dart';

class NewsService implements GenericService<NewsModel> {
  final List<NewsModel> _fakeDb = [];
  @override
  bool delete(int id) {
    _fakeDb.removeWhere((element) => element.id == id);
    return true;
  }

  @override
  List<NewsModel> findAll() {
    return _fakeDb;
  }

  @override
  NewsModel findOne(int id) {
    return _fakeDb.firstWhere((element) => element.id == id);
  }

  @override
  bool save(NewsModel value) {
    NewsModel? model = _fakeDb.firstWhereOrNull(
      (element) => element.id == value.id,
    );

    if (model == null) {
      _fakeDb.add(value);
    } else {
      var index = _fakeDb.indexOf(model);
      _fakeDb[index] = value;
    }

    return true;
  }
}
