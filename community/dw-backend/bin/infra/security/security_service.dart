import 'package:shelf/shelf.dart';

abstract class SecurityService<T> {
  Future<String> generateJWT(String userId);
  Future<T?> validateJWT(String token);
  Middleware get verifyJwt;
  Middleware get authorization;
}
