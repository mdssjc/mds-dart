class Api {
  String? dateTime;

  Future<String> getDateTime() {
    return Future.delayed(
      const Duration(seconds: 1),
      () => DateTime.now().toIso8601String(),
    ).then((value) {
      dateTime = value;
      return value;
    });
  }
}
