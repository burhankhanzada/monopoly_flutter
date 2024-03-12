import 'package:flutter/material.dart';
import 'package:monopoly_flutter/utils/offset_util.dart';
import 'package:monopoly_flutter/utils/size_util.dart';

List<Rect> calculateTracksRects() {
  late Rect previousRect;
  late Offset previousOffset = Offset.zero;

  final list = <Rect>[];

  for (int stepIndex = 0; stepIndex < 40; stepIndex++) {
    // Go Box
    if (stepIndex == 0) {
      previousOffset = Offset(
        rightOffset - cornerSizeHalf,
        bottomOffset - cornerSizeHalf,
      );
    }

    // 1
    else if (stepIndex == 1) {
      previousOffset = Offset(
        previousRect.center.dx -
            (cornerSize / 2) -
            (nonCornerSize / 2),
        previousRect.center.dy,
      );
    }

    // Jail Box
    else if (stepIndex == 10) {
      previousOffset = Offset(
        leftOffset + cornerSizeHalf,
        bottomOffset - cornerSizeHalf,
      );
    }

    // 11
    else if (stepIndex == 11) {
      previousOffset = Offset(
        previousRect.center.dx,
        previousRect.center.dy -
            (cornerSize / 2) -
            (nonCornerSize / 2),
      );
    }

    // Free Parking Box
    else if (stepIndex == 20) {
      previousOffset = Offset(
        leftOffset + cornerSizeHalf,
        topOffset + cornerSizeHalf,
      );
    }

    // 21
    else if (stepIndex == 21) {
      previousOffset = Offset(
        previousRect.center.dx +
            (cornerSize / 2) +
            (nonCornerSize / 2),
        previousRect.center.dy,
      );
    }

    // Go to Jail Box
    else if (stepIndex == 30) {
      var offset = cornerSize / 2;
      previousOffset = Offset(
        rightOffset - offset,
        topOffset + offset,
      );
    }

    // 31
    else if (stepIndex == 31) {
      previousOffset = Offset(
        previousRect.center.dx,
        previousRect.center.dy +
            (cornerSize / 2) +
            (nonCornerSize / 2),
      );
    }

    // Bottom Boxes
    else if (stepIndex > 1 && stepIndex < 10) {
      previousOffset = Offset(
        previousRect.center.dx - nonCornerSize,
        previousRect.center.dy,
      );
    }

    // Left Boxes
    else if (stepIndex > 11 && stepIndex < 20) {
      previousOffset = Offset(
        previousRect.center.dx,
        previousRect.center.dy - nonCornerSize,
      );
    }

    // Top Boxes
    else if (stepIndex > 21 && stepIndex < 30) {
      previousOffset = Offset(
        previousRect.center.dx + nonCornerSize,
        previousRect.center.dy,
      );
    }

    // Right Boxes
    else if (stepIndex > 31 && stepIndex < 40) {
      previousOffset = Offset(
        previousRect.center.dx,
        previousRect.center.dy + nonCornerSize,
      );
    }

    previousRect = Rect.fromCenter(
      center: previousOffset,
      width: tokenSize,
      height: tokenSize,
    );

    list.add(previousRect);
  }

  return list;
}
