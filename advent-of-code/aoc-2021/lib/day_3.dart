import 'dart:convert';
import 'dart:io';

Future<int> execute(input) async {
  var informations = await File(input)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .toList();

  var bitsCount = List.filled(informations[0].length, 0);

  for (var information in informations) {
    var bits = information.split('');

    for (var i = 0; i < bits.length; i++) {
      bitsCount[i] += bits[i] == '1' ? 1 : 0;
    }
  }

  var middle = informations.length / 2;

  var data = bitsCount.map((bit) => bit > middle ? '1' : 0).join();
  var gammaRate = int.parse(data, radix: 2);
  var epsilonRate = int.parse('1' * data.length, radix: 2) - gammaRate;
  var powerConsumption = gammaRate * epsilonRate;

  return powerConsumption;
}
