extension Range on int {
  List<int> rangeTo(int other) {
    if (other < this) {
      return [];
    }

    var result = [this];
    for (var i = this + 1; i <= other; i++) {
      result.add(i);
    }
    return result;
  }
}

void main() {
  for (var i in 1.rangeTo(5)) {
    print(i);
  }
  // output: [1, 2, 3, 4, 5]
}
