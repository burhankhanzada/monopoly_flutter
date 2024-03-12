import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/constants/list_constant.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:monopoly_flutter/utils/size_util.dart';

class PainterStepOwnedIndicator extends ConsumerWidget {
  const PainterStepOwnedIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(gameNotifierProvider);
    return SizedBox.square(
      dimension: boardSize,
      child: CustomPaint(
        painter: TokenTrackPainter(),
      ),
    );
  }
}

class TokenTrackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    for (final step in stepList) {
      if (step is BuyableStep) {
        final buyableStep = step as BuyableStep;
        final ownedBy = buyableStep.ownedBy;

        if (ownedBy != null) {
          final rect = step.rect;

          late Offset offset;
          late double angle;

          if (step.position == BoxPosition.top) {
            angle = pi + pi;
            offset = rect.bottomCenter;
          } else if (step.position == BoxPosition.left) {
            angle = pi + pi / 2;
            offset = rect.centerRight;
          } else if (step.position == BoxPosition.right) {
            angle = pi / 2;
            offset = rect.centerLeft;
          } else if (step.position == BoxPosition.bottom) {
            angle = pi;
            offset = rect.topCenter;
          }

          fillPaint.color = ownedBy.token.color;

          canvas.drawArc(
            Rect.fromCenter(center: offset, width: 50, height: 50),
            angle,
            pi,
            true,
            fillPaint,
          );
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
