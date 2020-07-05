import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/constants.dart';
import 'package:flutter_design_patterns/data/models/design_pattern.dart';

class DesignPatternDetailsHeader extends StatelessWidget {
  final DesignPattern designPattern;

  const DesignPatternDetailsHeader({
    @required this.designPattern,
  }) : assert(designPattern != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              designPattern.title,
              style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 32.0,
                  ),
            ),
          ],
        ),
        const SizedBox(height: spaceL),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                designPattern.description,
                style: Theme.of(context).textTheme.subhead,
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 99,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
