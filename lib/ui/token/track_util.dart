import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/canvas_size_util.dart';

List<Rect> calculateTokensRects() {
  late Rect previousRect;
  late Offset previousOffset = Offset.zero;

  final list = <Rect>[];

  final sizeOffsetUtil = SizeOffsetUtil();

  for (int stepIndex = 0; stepIndex < 40; stepIndex++) {
    // Go Box
    if (stepIndex == 0) {
      previousOffset = Offset(
        sizeOffsetUtil.rightOffset - sizeOffsetUtil.cornerSizeHalf,
        sizeOffsetUtil.bottomOffset - sizeOffsetUtil.cornerSizeHalf,
      );
    }

    // 1
    else if (stepIndex == 1) {
      previousOffset = Offset(
        previousRect.center.dx -
            (sizeOffsetUtil.cornerSize / 2) -
            (sizeOffsetUtil.nonCornerSize / 2),
        previousRect.center.dy,
      );
    }

    // Jail Box
    else if (stepIndex == 10) {
      previousOffset = Offset(
        sizeOffsetUtil.leftOffset + sizeOffsetUtil.cornerSizeHalf,
        sizeOffsetUtil.bottomOffset - sizeOffsetUtil.cornerSizeHalf,
      );
    }

    // 11
    else if (stepIndex == 11) {
      previousOffset = Offset(
        previousRect.center.dx,
        previousRect.center.dy -
            (sizeOffsetUtil.cornerSize / 2) -
            (sizeOffsetUtil.nonCornerSize / 2),
      );
    }

    // Free Parking Box
    else if (stepIndex == 20) {
      previousOffset = Offset(
        sizeOffsetUtil.leftOffset + sizeOffsetUtil.cornerSizeHalf,
        sizeOffsetUtil.topOffset + sizeOffsetUtil.cornerSizeHalf,
      );
    }

    // 21
    else if (stepIndex == 21) {
      previousOffset = Offset(
        previousRect.center.dx +
            (sizeOffsetUtil.cornerSize / 2) +
            (sizeOffsetUtil.nonCornerSize / 2),
        previousRect.center.dy,
      );
    }

    // Go to Jail Box
    else if (stepIndex == 30) {
      var offset = sizeOffsetUtil.cornerSize / 2;
      previousOffset = Offset(
        sizeOffsetUtil.rightOffset - offset,
        sizeOffsetUtil.topOffset + offset,
      );
    }

    // 31
    else if (stepIndex == 31) {
      previousOffset = Offset(
        previousRect.center.dx,
        previousRect.center.dy +
            (sizeOffsetUtil.cornerSize / 2) +
            (sizeOffsetUtil.nonCornerSize / 2),
      );
    }

    // Bottom Boxes
    else if (stepIndex > 1 && stepIndex < 10) {
      previousOffset = Offset(
        previousRect.center.dx - sizeOffsetUtil.nonCornerSize,
        previousRect.center.dy,
      );
    }

    // Left Boxes
    else if (stepIndex > 11 && stepIndex < 20) {
      previousOffset = Offset(
        previousRect.center.dx,
        previousRect.center.dy - sizeOffsetUtil.nonCornerSize,
      );
    }

    // Top Boxes
    else if (stepIndex > 21 && stepIndex < 30) {
      previousOffset = Offset(
        previousRect.center.dx + sizeOffsetUtil.nonCornerSize,
        previousRect.center.dy,
      );
    }

    // Right Boxes
    else if (stepIndex > 31 && stepIndex < 40) {
      previousOffset = Offset(
        previousRect.center.dx,
        previousRect.center.dy + sizeOffsetUtil.nonCornerSize,
      );
    }

    previousRect = Rect.fromCenter(
      center: previousOffset,
      width: sizeOffsetUtil.tokenSize,
      height: sizeOffsetUtil.tokenSize,
    );

    list.add(previousRect);
  }

  return list;
}
