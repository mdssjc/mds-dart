import 'package:aoc_2021/day_1.dart' as day1;
import 'package:aoc_2021/day_2.dart' as day2;

void main(List<String> arguments) async {
  print('Day 1: Sonar Sweep');
  day1.execute('assets/day_1').then(print);
  day1.execute('assets/day_1', window: 3).then(print);

  print('Day 2: Dive!');
  day2.execute('assets/day_2').then(print);
  day2.execute('assets/day_2', precision: true).then(print);
}
