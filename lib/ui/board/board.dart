// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/step_owened_indicator_painter.dart';
import 'package:monopoly_flutter/ui/board/steps.dart';
import 'package:monopoly_flutter/ui/board/token_track_painter.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Steps(),
        PainterStepOwnedIndicator()
        // PainterTokenTrack(),
      ],
    );
  }
}
