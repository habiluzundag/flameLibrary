import 'dart:ui';

import 'package:flame/components.dart';

class MyTimer extends TimerComponent {
  final VoidCallback? finish;

  MyTimer({
    this.finish,
    required super.period,
    required super.repeat,
    required super.tickCount,
    required super.removeOnFinish,
    required super.onTick,
  });

  void onFinish() {
    finish?.call();
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (timer.finished) {
      onFinish();
    }
  }
}
