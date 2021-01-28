Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3]);
  Stream.value(10);
  Stream.error(Exception('something went wrong'));
  Stream.empty();
  Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42));
  Stream.periodic(Duration(seconds: 1), (index) => index);

  // final value = await stream.first;
  // print(value);
  // await stream.forEach((element) => print(element));
  final doubles = stream.map((value) => value * 2).where((value) => value > 3);
  // print(doubles);
  await doubles.forEach(print);
}
