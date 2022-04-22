import 'package:flutter/material.dart';
import 'package:inherited_widget/api_provider.dart';

import 'date_time_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueKey _textKey = const ValueKey<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ApiProvider.of(context).api.dateTime ?? ''),
      ),
      body: GestureDetector(
        onTap: () async {
          final api = ApiProvider.of(context).api;
          final dateTime = await api.getDateTime();
          setState(() {
            _textKey = ValueKey(dateTime);
          });
        },
        child: SizedBox.expand(
          child: Center(
            child: Container(
              color: Colors.white,
              child: DateTimeWidget(key: _textKey),
            ),
          ),
        ),
      ),
    );
  }
}
