class PositiveInt {
  final int value;

  const PositiveInt(this.value)
      : assert(value >= 0, 'Value cannot be negative');
}

void signIn(String email, String password) {
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}

void main() {
  const invalidAge = PositiveInt(-1);
  print(invalidAge);

  signIn('', '');

  const list = [1, 2, 3];
  print(list[4]);
}
