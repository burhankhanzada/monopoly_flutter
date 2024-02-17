import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/ui/board/board.dart';
import 'package:monopoly_flutter/ui/token/token.dart';
import 'package:monopoly_flutter/ui/canvas_size_util.dart';
import 'package:monopoly_flutter/ui/token/painter/token_painter.dart';
import 'package:monopoly_flutter/ui/token/track_util.dart';

class Game extends ConsumerStatefulWidget {
  const Game({super.key});

  @override
  ConsumerState<Game> createState() => _GameState();
}

class _GameState extends ConsumerState<Game>
    with SingleTickerProviderStateMixin {
  int stepIndex = 0;

  late Animation _animation;
  late AnimationController _animationController;

  final sizeOffsetUtil = SizeOffsetUtil();

  List<Rect> tracks = calculateTokensRects();

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    final reatTween = RectTween(
      begin: tracks[stepIndex],
      end: tracks[stepIndex + 1],
    );

    _animation = reatTween.animate(_animationController);

    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Rect begin;
        Rect end;

        if (stepIndex >= 39) {
          begin = tracks[stepIndex];
          stepIndex = 0;
          end = tracks[stepIndex];
        } else {
          begin = tracks[stepIndex];
          end = tracks[stepIndex + 1];
          stepIndex++;
        }

        final reatTween = RectTween(
          begin: begin,
          end: end,
        );

        _animation = reatTween.animate(_animationController);

        _animationController.reset();

        _animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FittedBox(
        child: Stack(
          children: [
            const Board(),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Positioned.fromRect(
                  rect: _animation.value,
                  child: Token(
                    color: Colors.black,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
