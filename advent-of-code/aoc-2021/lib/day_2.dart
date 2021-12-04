import 'dart:convert';
import 'dart:io';

Future<int> execute(input, {precision = false}) async {
  int position = 0;
  int depth = 0;
  int aim = 0;

  List<String> informations = await File(input)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .toList();

  for (var information in informations) {
    List<String> command = information.split(' ');
    int value = int.parse(command[1]);

    switch (command[0]) {
      case 'forward':
        position += value;
        if (precision) {
          depth += aim * value;
        }
        break;
      case 'up':
        if (precision) {
          aim -= value;
        } else {
          depth -= value;
        }
        break;
      case 'down':
        if (precision) {
          aim += value;
        } else {
          depth += value;
        }
        break;
      default:
    }
  }

  return position * depth;
}
