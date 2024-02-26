
import 'package:flutter/material.dart';

import 'package:monopoly_flutter/ui/board/painter/corners_util.dart';
import 'package:monopoly_flutter/ui/board/painter/steps_utl.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

class PainterBoard extends StatelessWidget {
  const PainterBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: boardSize,
      child: CustomPaint(
        painter: BoardPainter(),
      ),
    );
  }
}

class BoardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    CornersUtil(canvas);

    StepsUtil(canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
