import 'product.dart';

class Item {
  final Product product;

  final int quantity;

  const Item({required this.product, required this.quantity});

  double get price => quantity * product.price;

  @override
  String toString() => '$quantity x ${product.name}: \$$price';
}
