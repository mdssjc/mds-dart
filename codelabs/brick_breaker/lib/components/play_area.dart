import 'dart:async';

import 'package:brick_breaker/brick_breaker.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class PlayArea extends RectangleComponent with HasGameReference<BrickBreaker> {
  PlayArea()
      : super(
          paint: Paint()..color = const Color(0xFFF2E8CF),
          children: [RectangleHitbox()],
        );

  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    size = Vector2(game.width, game.height);
  }
}
