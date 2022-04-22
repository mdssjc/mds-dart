import 'dart:developer' as devtools show log;

import 'package:flutter/material.dart';

import 'available_colors.dart';
import 'available_colors_widget.dart';

class ColorWidget extends StatelessWidget {
  final AvailableColors color;

  const ColorWidget({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (color) {
      case AvailableColors.one:
        devtools.log('Color 1 widget got rebuild!');
        break;
      case AvailableColors.two:
        devtools.log('Color 2 widget got rebuild!');
        break;
    }

    final provider = AvailableColorsWidget.of(context, color);

    return Container(
      height: 100,
      color: color == AvailableColors.one ? provider.color1 : provider.color2,
    );
  }
}
