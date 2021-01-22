class Fracion {
  final int numerator;
  final int denominator;

  Fracion(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }

  double get value => numerator / denominator;
}

void testFraction() {
  try {
    final f = Fracion(3, 0);
    print(f.value);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
    rethrow;
  } on Exception catch (e) {
    print(e);
  } finally {
    print('testFraction done');
  }
}

void main() {
  testFraction();
  print('done');
}
