import 'package:flutter/material.dart';
import 'package:inherited_widget/api_provider.dart';

import 'api.dart';
import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management - Inherited Widget',
      home: ApiProvider(
        api: Api(),
        child: const HomePage(),
      ),
    );
  }
}
