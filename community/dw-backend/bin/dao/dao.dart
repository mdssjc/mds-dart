abstract class Dao<T> {
  Future<bool> create(T value);
  Future<T?> findOne(int id);
  Future<List<T>> findAll();
  Future<bool> update(T value);
  Future<bool> delete(int id);
}
