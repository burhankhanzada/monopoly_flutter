
import 'package:flutter/material.dart';

import 'package:monopoly_flutter/ui/board/painter/corners_util.dart';
import 'package:monopoly_flutter/ui/canvas_size_util.dart';
import 'package:monopoly_flutter/ui/board/painter/steps_utl.dart';

class BoardpPainter extends StatelessWidget {
  const BoardpPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: BoardPainter(),
          size: const Size.square(1000),
        ),
      ],
    );
  }
}

class BoardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final sizeOffsetUtil = SizeOffsetUtil();

    CornersUtil(canvas, sizeOffsetUtil);

    StepsUtil(canvas, sizeOffsetUtil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
