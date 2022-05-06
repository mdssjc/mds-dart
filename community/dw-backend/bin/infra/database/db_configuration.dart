abstract class DbConfiguration {
  Future<dynamic> createConnection();

  Future<dynamic> get connection;
}
