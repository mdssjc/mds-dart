void main() {
  const text = 'I like pizza';
  const topping = 'with tomatoes';
  var favourite = '$text $topping';
  final newText = favourite.replaceAll('pizza', 'pasta');
  favourite = 'Now I like curry';
  print(newText);
}
