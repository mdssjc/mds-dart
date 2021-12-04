import 'dart:convert';
import 'dart:io';

Future<int> execute(input, {window = 1}) async {
  int count = 0;

  List<int> measurements = await File(input)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .map(int.parse)
      .toList();

  int lastMeasurement =
      measurements.take(window).reduce((value, element) => element + value);
  for (var i = 1; i <= measurements.length - window; i++) {
    var measurement = measurements
        .skip(i)
        .take(window)
        .reduce((value, element) => element + value);
    if (measurement > lastMeasurement) {
      count++;
    }
    lastMeasurement = measurement;
  }

  return count;
}
