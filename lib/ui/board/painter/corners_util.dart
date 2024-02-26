import 'package:flutter/material.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

class CornersUtil {
  final Canvas canvas;

  CornersUtil(this.canvas) {
    _drawCornersSteps();
  }


  void _drawCornersSteps() {
    _drawGoStep();
    _drawJailStep();
    _drawFreeParkingStep();
    _drawGoToJailStep();
  }

  void _drawCorner({
    required Color color,
    required double topOffset,
    required double leftOffset,
  }) {
    final rect = Rect.fromLTWH(
      leftOffset,
      topOffset,
      cornerSize,
      cornerSize,
    );
    canvas.drawRect(rect, strokePaint);
  }

  void _drawGoStep() {
    _drawCorner(
      color: Colors.red,
      topOffset: bottomOffset - cornerSize,
      leftOffset: rightOffset - cornerSize,
    );
  }

  void _drawJailStep() {
    _drawCorner(
      color: Colors.grey,
      topOffset: bottomOffset - cornerSize,
      leftOffset: leftOffset,
    );
  }

  void _drawFreeParkingStep() {
    _drawCorner(
      color: Colors.green,
      topOffset: topOffset,
      leftOffset: leftOffset,
    );
  }

  void _drawGoToJailStep() {
    _drawCorner(
      color: Colors.blue,
      topOffset: topOffset,
      leftOffset: rightOffset - cornerSize,
    );
  }
}
