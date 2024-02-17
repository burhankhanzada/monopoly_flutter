import 'package:flutter/material.dart';

import 'package:monopoly_flutter/ui/canvas_size_util.dart';

class TokenPainter extends CustomPainter {
  final Rect rect;
  final Color color;

  TokenPainter({
    required this.color,
    required this.rect,
  });

  final sizeOffsetUtil = SizeOffsetUtil();

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    _drawToken(canvas, rect);
  }

  void _drawToken(Canvas canvas, Rect rect) {
    sizeOffsetUtil.fillPaint.color = color;
    canvas.drawOval(rect, sizeOffsetUtil.fillPaint);
  }
}
