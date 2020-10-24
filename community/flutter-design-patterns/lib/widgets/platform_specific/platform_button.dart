import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformButton extends StatelessWidget {
  final Widget child;
  final Color materialColor;
  final Color materialTextColor;
  final VoidCallback onPressed;

  const PlatformButton({
    @required this.child,
    @required this.materialColor,
    @required this.materialTextColor,
    @required this.onPressed,
  })  : assert(child != null),
        assert(materialColor != null),
        assert(materialTextColor != null),
        assert(onPressed != null);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? MaterialButton(
            child: child,
            color: materialColor,
            textColor: materialTextColor,
            onPressed: onPressed,
          )
        : CupertinoButton.filled(
            child: child,
            onPressed: onPressed,
          );
  }
}
