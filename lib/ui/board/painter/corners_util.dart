import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/canvas_size_util.dart';

class CornersUtil {
  final Canvas canvas;
  final SizeOffsetUtil sizeOffsetUtil;

  CornersUtil(this.canvas, this.sizeOffsetUtil) {
    drawCornersSteps();
  }

  void drawCornersSteps() {
    _drawTopLeftCornerStep();
    _drawTopRightCornerStep();
    _drawBottomLeftCornerStep();
    _drawBottomRightCornerStep();
  }

  void _drawCorner({
    required Color color,
    required double topOffset,
    required double leftOffset,
  }) {
    final rect = Rect.fromLTWH(
      leftOffset,
      topOffset,
      sizeOffsetUtil.cornerSize,
      sizeOffsetUtil.cornerSize,
    );
    sizeOffsetUtil.fillPaint.color = color;
    canvas.drawRect(rect, sizeOffsetUtil.fillPaint);
    canvas.drawRect(rect, sizeOffsetUtil.strokePaint);
  }

  void _drawTopLeftCornerStep() {
    _drawCorner(
      color: Colors.green,
      topOffset: sizeOffsetUtil.topOffset,
      leftOffset: sizeOffsetUtil.leftOffset,
    );
  }

  void _drawTopRightCornerStep() {
    _drawCorner(
      color: Colors.blue,
      topOffset: sizeOffsetUtil.topOffset,
      leftOffset: sizeOffsetUtil.rightOffset - sizeOffsetUtil.cornerSize,
    );
  }

  void _drawBottomLeftCornerStep() {
    _drawCorner(
      color: Colors.grey,
      topOffset: sizeOffsetUtil.bottomOffset - sizeOffsetUtil.cornerSize,
      leftOffset: sizeOffsetUtil.leftOffset,
    );
  }

  void _drawBottomRightCornerStep() {
    _drawCorner(
      color: Colors.red,
      topOffset: sizeOffsetUtil.bottomOffset - sizeOffsetUtil.cornerSize,
      leftOffset: sizeOffsetUtil.rightOffset - sizeOffsetUtil.cornerSize,
    );
  }
}
