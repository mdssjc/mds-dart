import 'package:test/test.dart';
import 'package:aoc_2021/day_1.dart' as day1;
import 'package:aoc_2021/day_2.dart' as day2;
import 'package:aoc_2021/day_3.dart' as day3;

void main() {
  test('day 1', () {
    expect(day1.execute('assets/day_1_basic'), completion(7));
    expect(day1.execute('assets/day_1_basic', window: 3), completion(5));
  });

  test('day 2', () {
    expect(day2.execute('assets/day_2_basic'), completion(150));
    expect(
        day2.execute('assets/day_2_basic', precision: true), completion(900));
  });

  test('day 3', () {
    expect(day3.execute('assets/day_3_basic'), completion(198));
  });
}
