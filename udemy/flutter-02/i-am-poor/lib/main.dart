import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text('I Am Poor'),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/one_dollar.jpg'),
            ),
          ),
        ),
      ),
    );
