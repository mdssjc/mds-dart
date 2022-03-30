import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

Future<void> main() async {
  final server =
      await shelf_io.serve((request) => Response.ok('ok'), 'localhost', 8080);
  print('Server started');
}
