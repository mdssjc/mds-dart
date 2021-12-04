import 'dart:convert';
import 'dart:io';

Future<int> execute(input) async {
  int horizontal = 0;
  int depth = 0;

  List<String> informations = await File(input)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .toList();

  for (var information in informations) {
    List<String> command = information.split(' ');
    switch (command[0]) {
      case 'forward':
        horizontal += int.parse(command[1]);
        break;
      case 'up':
        depth -= int.parse(command[1]);
        break;
      case 'down':
        depth += int.parse(command[1]);
        break;
      default:
    }
  }

  return horizontal * depth;
}
