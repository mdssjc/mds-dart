import 'dart:convert';
import 'dart:io';

Future<int> calculate(input) async {
  int measurement = 0;

  List<int> measurements = await File(input)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .map((event) => int.parse(event))
      .toList();

  int lastMeasurement = measurements.first;
  for (var i = 1; i < measurements.length; i++) {
    if (measurements[i] > lastMeasurement) {
      measurement++;
    }
    lastMeasurement = measurements[i];
  }

  return measurement;
}
