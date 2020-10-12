enum Operation { plus, minus, multiply, divide }

void main() {
  const a = 6;
  const b = 3;
  const op = Operation.divide;

  var result;
  switch (op) {
    case Operation.plus:
      print('$a + $b = ${a + b}');
      break;
    case Operation.minus:
      print('$a - $b = ${a - b}');
      break;
    case Operation.multiply:
      print('$a * $b = ${a * b}');
      break;
    case Operation.divide:
      print('$a / $b = ${a / b}');
      break;
  }
}
