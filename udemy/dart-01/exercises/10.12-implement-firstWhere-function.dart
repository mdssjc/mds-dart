void main() {
  const numbers = [1, 2, 3, 4];
  print(firstWhere<int>(numbers, (number) => number == 5, orElse: () => -1));
}

T firstWhere<T>(List<T> items, bool Function(T) find,
    {required T Function() orElse}) {
  for (var item in items) {
    if (find(item)) {
      return item;
    }
  }
  return orElse();
}
