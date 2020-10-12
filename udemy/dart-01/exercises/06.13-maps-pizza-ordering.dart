void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni'];

  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price == null) {
      print('$item pizza is not on the menu');
    } else {
      total += pizzaPrices[item];
    }
  }

  print('Total: \$$total');
}
