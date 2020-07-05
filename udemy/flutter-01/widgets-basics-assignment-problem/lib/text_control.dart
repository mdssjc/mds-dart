import 'package:assignment1/text_output.dart';
import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  var _text = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () => _changeText(),
            child: Text('Press me!'),
          ),
          TextOutput(_text),
        ],
      ),
    );
  }

  void _changeText() {
    setState(() {
      _text = 'This is Flutter!';
    });
  }
}
