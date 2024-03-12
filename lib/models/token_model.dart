import 'package:flutter/widgets.dart';

class TokenModel {
  final Color color;
  int currentStep = 0;
  bool isInJail = false;
  bool isAnimating = false;
  late Animation<Rect?> animation;
  late AnimationController controller;

  TokenModel(this.color);

  void setAnimationAndStepInfo({
    required Rect end,
    required Rect begin,
    required TickerProvider vsync,
    required void Function(AnimationStatus status) listener,
  }) {
    final controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 250),
    );

    controller.addStatusListener(listener);

    final tween = RectTween(begin: begin, end: end);

    final animation = tween.animate(controller);

    this.animation = animation;
    this.controller = controller;
  }
}
