import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

class StepsUtil {
  final Canvas canvas;

  StepsUtil(this.canvas) {
    _drawNonCornersSteps();
  }

  void _drawNonCornersSteps() {
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
        cornerSize + index * nonCornerSize,
        topOffset,
        nonCornerSize,
        cornerSize,
      );
    }

    if (position == BoxPosition.left) {
      rect = Rect.fromLTWH(
        leftOffset,
        cornerSize + index * nonCornerSize,
        cornerSize,
        nonCornerSize,
      );
    }

    if (position == BoxPosition.right) {
      rect = Rect.fromLTWH(
        rightOffset - cornerSize,
        cornerSize + index * nonCornerSize,
        cornerSize,
        nonCornerSize,
      );
    }

    if (position == BoxPosition.bottom) {
      rect = Rect.fromLTWH(
        cornerSize + index * nonCornerSize,
        bottomOffset - cornerSize,
        nonCornerSize,
        cornerSize,
      );
    }

    canvas.drawRect(rect, strokePaint);
  }

  void _drawPropertyBox({
    required int index,
    required Color color,
    required BoxPosition position,
  }) {
    late Rect rect;

    if (position == BoxPosition.top) {
      rect = Rect.fromLTWH(
        cornerSize + index * nonCornerSize,
        cornerSize - propertyHeaderSize,
        nonCornerSize,
        propertyHeaderSize,
      );
    }

    if (position == BoxPosition.left) {
      rect = Rect.fromLTWH(
        cornerSize - propertyHeaderSize,
        cornerSize + index * nonCornerSize,
        propertyHeaderSize,
        nonCornerSize,
      );
    }

    if (position == BoxPosition.right) {
      rect = Rect.fromLTWH(
        rightOffset - cornerSize,
        cornerSize + index * nonCornerSize,
        propertyHeaderSize,
        nonCornerSize,
      );
    }

    if (position == BoxPosition.bottom) {
      rect = Rect.fromLTWH(
        cornerSize + index * nonCornerSize,
        bottomOffset - cornerSize,
        nonCornerSize,
        propertyHeaderSize,
      );
    }

    canvas.drawRect(rect, strokePaint);
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
