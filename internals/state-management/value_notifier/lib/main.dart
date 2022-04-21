import 'package:flutter/material.dart';
import 'package:value_notifier/listing_page.dart';
import 'package:value_notifier/register_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management - Value Notifier',
      home: const ListingPage(),
      routes: {
        '/add': (context) => const RegisterPage(),
      },
    );
  }
}
