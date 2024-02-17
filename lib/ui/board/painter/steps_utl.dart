import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';
import 'package:monopoly_flutter/ui/canvas_size_util.dart';

class StepsUtil {
  final Canvas canvas;
  final SizeOffsetUtil sizeOffsetUtil;

  StepsUtil(this.canvas, this.sizeOffsetUtil) {
    drawNonCornersSteps();
  }

  void drawNonCornersSteps() {
    _drawTopSteps();
    _drawLeftSteps();
    _drawRightSteps();
    _drawBottomSteps();
  }

  void _drawEmptyBox({
    required int index,
    required BoxPosition position,
  }) {
    late Rect rect;

    if (position == BoxPosition.top) {
      rect = Rect.fromLTWH(
        sizeOffsetUtil.cornerSize + index * sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.topOffset,
        sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.cornerSize,
      );
    }

    if (position == BoxPosition.left) {
      rect = Rect.fromLTWH(
        sizeOffsetUtil.leftOffset,
        sizeOffsetUtil.cornerSize + index * sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.cornerSize,
        sizeOffsetUtil.nonCornerSize,
      );
    }

    if (position == BoxPosition.right) {
      rect = Rect.fromLTWH(
        sizeOffsetUtil.rightOffset - sizeOffsetUtil.cornerSize,
        sizeOffsetUtil.cornerSize + index * sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.cornerSize,
        sizeOffsetUtil.nonCornerSize,
      );
    }

    if (position == BoxPosition.bottom) {
      rect = Rect.fromLTWH(
        sizeOffsetUtil.cornerSize + index * sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.bottomOffset - sizeOffsetUtil.cornerSize,
        sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.cornerSize,
      );
    }

    canvas.drawRect(rect, sizeOffsetUtil.strokePaint);
  }

  void _drawPropertyBox({
    required int index,
    required Color color,
    required BoxPosition position,
  }) {
    late Rect rect;

    if (position == BoxPosition.top) {
      rect = Rect.fromLTWH(
        sizeOffsetUtil.cornerSize + index * sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.cornerSize - sizeOffsetUtil.propertyHeaderSize,
        sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.propertyHeaderSize,
      );
    }

    if (position == BoxPosition.left) {
      rect = Rect.fromLTWH(
        sizeOffsetUtil.cornerSize - sizeOffsetUtil.propertyHeaderSize,
        sizeOffsetUtil.cornerSize + index * sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.propertyHeaderSize,
        sizeOffsetUtil.nonCornerSize,
      );
    }

    if (position == BoxPosition.right) {
      rect = Rect.fromLTWH(
        sizeOffsetUtil.rightOffset - sizeOffsetUtil.cornerSize,
        sizeOffsetUtil.cornerSize + index * sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.propertyHeaderSize,
        sizeOffsetUtil.nonCornerSize,
      );
    }

    if (position == BoxPosition.bottom) {
      rect = Rect.fromLTWH(
        sizeOffsetUtil.cornerSize + index * sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.bottomOffset - sizeOffsetUtil.cornerSize,
        sizeOffsetUtil.nonCornerSize,
        sizeOffsetUtil.propertyHeaderSize,
      );
    }

    sizeOffsetUtil.fillPaint.color = color;
    canvas.drawRect(rect, sizeOffsetUtil.fillPaint);
    canvas.drawRect(rect, sizeOffsetUtil.strokePaint);
  }

  void _drawTopSteps() {
    for (int i = 0; i < 9; i++) {
      _drawPropertyBox(index: i, color: Colors.red, position: BoxPosition.top);
      _drawEmptyBox(index: i, position: BoxPosition.top);
    }
  }

  void _drawLeftSteps() {
    for (int i = 0; i < 9; i++) {
      _drawPropertyBox(
        index: i,
        color: Colors.green,
        position: BoxPosition.left,
      );
      _drawEmptyBox(index: i, position: BoxPosition.left);
    }
  }

  void _drawRightSteps() {
    for (int i = 0; i < 9; i++) {
      _drawPropertyBox(
        index: i,
        color: Colors.blue,
        position: BoxPosition.right,
      );
      _drawEmptyBox(index: i, position: BoxPosition.right);
    }
  }

  void _drawBottomSteps() {
    for (int i = 0; i < 9; i++) {
      _drawPropertyBox(
        index: i,
        color: Colors.yellow,
        position: BoxPosition.bottom,
      );
      _drawEmptyBox(index: i, position: BoxPosition.bottom);
    }
  }
}
