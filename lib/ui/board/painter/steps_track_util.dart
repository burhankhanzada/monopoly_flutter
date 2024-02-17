import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/canvas_size_util.dart';

class StepsTrackUtil {
  final SizeOffsetUtil sizeOffsetUtil;
  final Function(List<List<Rect>> tracks) trackCalculationListener;

  StepsTrackUtil({
    required this.sizeOffsetUtil,
    required this.trackCalculationListener,
  }) {
    _calculatePlayerTracks();
  }

  void _calculatePlayerTracks() {
    late Rect prevRect;
    late Offset prevOffset;

    List<Rect> tracks = [];

    for (int stepIndex = 0; stepIndex < 39; stepIndex++) {
      // Go Box
      if (stepIndex == 0) {
        var offset = sizeOffsetUtil.cornerSize / 2;
        prevOffset = Offset(
          sizeOffsetUtil.rightOffset - offset,
          sizeOffsetUtil.bottomOffset - offset,
        );
      }

      // Jail Box
      if (stepIndex == 10) {
        var offset = sizeOffsetUtil.cornerSize / 2;
        prevOffset = Offset(
          sizeOffsetUtil.leftOffset + offset,
          sizeOffsetUtil.bottomOffset - offset,
        );
      }

      // Free Parking Box
      if (stepIndex == 20) {
        var offset = sizeOffsetUtil.cornerSize / 2;
        prevOffset = Offset(
          sizeOffsetUtil.leftOffset - offset,
          sizeOffsetUtil.topOffset + offset,
        );
      }

      // Go to Jail Box
      if (stepIndex == 30) {
        var offset = sizeOffsetUtil.cornerSize / 2;
        prevOffset = Offset(
          sizeOffsetUtil.rightOffset - offset,
          sizeOffsetUtil.topOffset + offset,
        );
      }

      // // Bottom Boxes
      // if (stepIndex < 10) {
      //   prevOffset = Offset(
      //     prevRect.center.dx - canvasSizeUtil.nonCornerSize,
      //     prevRect.center.dy,
      //   );
      // }

      // // Right Boxes
      // if (stepIndex < 20) {
      //   prevOffset = Offset(
      //     prevRect.center.dx,
      //     prevRect.center.dy - canvasSizeUtil.nonCornerSize,
      //   );
      // }

      // // Top Boxes
      // if (stepIndex < 30) {
      //   prevOffset = Offset(
      //     prevRect.center.dx + canvasSizeUtil.nonCornerSize,
      //     prevRect.center.dy,
      //   );
      // }

      // // Right Boxes
      // if (stepIndex < 40) {
      //   prevOffset = Offset(
      //     prevRect.center.dx,
      //     prevRect.center.dy + canvasSizeUtil.nonCornerSize,
      //   );
      // }

      // if (stepIndex == 0 ||
      //     stepIndex == 10 ||
      //     stepIndex == 20 ||
      //     stepIndex == 30) {
      prevRect = Rect.fromCenter(
        center: prevOffset,
        width: sizeOffsetUtil.cornerSize,
        height: sizeOffsetUtil.cornerSize,
      );
      // } else {
      //   prevRect = Rect.fromCenter(
      //     center: prevOffset,
      //     width: canvasSizeUtil.nonCornerSize,
      //     height: canvasSizeUtil.nonCornerSize,
      //   );
      // }

      tracks.add(prevRect);
    }

    trackCalculationListener([
      tracks,
      tracks,
      tracks,
      tracks,
      tracks,
      tracks,
    ]);
  }
}
