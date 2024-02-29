import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/constants/list_constant.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

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
      final rect = step.rect;

      if (step is BuyableStep) {
        final buyAbleStep = step as BuyableStep;

        if (buyAbleStep.ownedBy != null) {
          fillPaint.color = buyAbleStep.ownedBy!.token.color;

          final size = switch (step.position) {
            BoxPosition.left || BoxPosition.right => rect.height,
            BoxPosition.top || BoxPosition.bottom => rect.width,
          };

          final path = Path();

          if (step.position == BoxPosition.top) {
            path.moveTo(rect.left, rect.bottom);
            path.relativeLineTo(size / 2, size / 2);
            path.relativeLineTo(size / 2, -size / 2);
            path.close();
          } else if (step.position == BoxPosition.left) {
            path.moveTo(rect.right, rect.top);
            path.relativeLineTo(size / 2, size / 2);
            path.relativeLineTo(-size / 2, size / 2);
            path.close();
          } else if (step.position == BoxPosition.right) {
            path.moveTo(rect.left, rect.top);
            path.relativeLineTo(-size / 2, size / 2);
            path.relativeLineTo(size / 2, size / 2);
            path.close();
          } else if (step.position == BoxPosition.bottom) {
            path.moveTo(rect.left, rect.top);
            path.relativeLineTo(size / 2, -size / 2);
            path.relativeLineTo(size / 2, size / 2);
            path.close();
          }

          canvas.drawPath(path, fillPaint);
          canvas.drawPath(path, strokePaint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
