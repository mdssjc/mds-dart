void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni', 'pineapple'];
  final total = calculateTotal(order, pizzaPrices);
  print('Total: \$$total');
}

double calculateTotal(List<String> order, Map<String, double> pizzaPrices) {
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    }
  }
  return total;
}
