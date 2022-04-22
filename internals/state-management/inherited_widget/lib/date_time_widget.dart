import 'package:flutter/material.dart';

import 'api_provider.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final api = ApiProvider.of(context).api;
    return Text(api.dateTime ?? 'Tap on the screen to fetch date and time');
  }
}
