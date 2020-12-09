class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});
}

class Item {
  final Product product;

  final int quantity;

  Item({required this.product, required this.quantity});

  double get price => quantity * product.price;
}

class Cart {}
