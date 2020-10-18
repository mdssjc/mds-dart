void main() {
  const numbers = [1, 2, 3, 4];
  print(where<int>(numbers, (number) => number % 2 == 1));
}

List<T> where<T>(List<T> items, bool Function(T) filter) {
  var results = <T>[];
  for (var item in items) {
    if (filter(item)) {
      results.add(item);
    }
  }
  return results;
}
