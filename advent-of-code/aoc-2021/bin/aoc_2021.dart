import 'package:aoc_2021/day_1.dart' as day1;
import 'package:aoc_2021/day_2.dart' as day2;
import 'package:aoc_2021/day_3.dart' as day3;

void main(List<String> arguments) async {
  print('Day 1: Sonar Sweep');
  await day1.execute('assets/day_1').then(print);
  await day1.execute('assets/day_1', window: 3).then(print);

  print('Day 2: Dive!');
  await day2.execute('assets/day_2').then(print);
  await day2.execute('assets/day_2', precision: true).then(print);

  print('Day 3: Binary Diagnostic');
  await day3.execute('assets/day_3').then(print);
}
