import 'dart:convert';
import 'dart:io';

class Module {
  final int mass;

  Module(this.mass);

  int getFuelRequirements() {
    return _calculateFuel(mass);
  }

  int getTotalFuelRequirements() {
    var total = 0;
    var fuel = getFuelRequirements();

    while (fuel > 0) {
      total += fuel;
      fuel = _calculateFuel(fuel);
    }

    return total;
  }

  int _calculateFuel(entry) {
    return entry ~/ 3 - 2;
  }
}

void main() async {
  print(Module(12).getTotalFuelRequirements());
  print(Module(14).getTotalFuelRequirements());
  print(Module(1969).getTotalFuelRequirements());
  print(Module(100756).getTotalFuelRequirements());

  var result = await new File('input.txt')
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .map((x) => int.tryParse(x))
      .map((x) => Module(x).getTotalFuelRequirements())
      .reduce((acc, x) => x + acc);
  print('Result: $result');
}
