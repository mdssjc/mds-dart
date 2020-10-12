void main() {
  const items = [1, 3, 5, 7, 9];
  var total = 0;

  for (var item in items) {
    total += item;
  }

  print(total);
}
