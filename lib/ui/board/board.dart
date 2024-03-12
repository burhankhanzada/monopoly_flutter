// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/board/step_owened_indicator_painter.dart';
import 'package:monopoly_flutter/ui/board/steps.dart';
import 'package:monopoly_flutter/ui/board/token_track_painter.dart';
import 'package:monopoly_flutter/utils/offset_util.dart';
import 'package:monopoly_flutter/utils/rect_util.dart';
import 'package:monopoly_flutter/utils/size_util.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const PainterStepOwnedIndicator(),
        const Steps(),
        // PainterTokenTrack(),
        Positioned.fromRect(
          rect: Rect.fromLTRB(
            cornerSize,
            cornerSize,
            rightOffset - cornerSize,
            bottomOffset - cornerSize,
          ),
          child: Consumer(
            builder: (context, ref, child) {
              final gameNotifier = ref.watch(gameNotifierProvider);

              final color = gameNotifier.isShowDialog
                  ? Colors.black54
                  : Colors.transparent;

              return Container(
                color: color,
              );
            },
          ),
        )
      ],
    );
  }
}
