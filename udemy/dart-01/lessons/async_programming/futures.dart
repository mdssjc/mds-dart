Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      // () => 'Cappuccino',
      () => throw Exception('Out of milk'),
    );

Future<void> main() async {
  print('Program started');
  fetchUserOrder()
      .then((order) => print('Order is ready: $order'))
      .catchError((error) => print(error))
      .whenComplete(() => print('Done'));

  try {
    final order = await fetchUserOrder();
    print(order);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
