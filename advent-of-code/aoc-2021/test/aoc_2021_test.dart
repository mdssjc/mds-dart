import 'package:aoc_2021/day_1.dart';
import 'package:test/test.dart';

void main() {
  test('day 1', () {
    expect(calculate('assets/day_1_basic'), completion(7));
    expect(calculate('assets/day_1_basic', window: 3), completion(5));
  });
}
